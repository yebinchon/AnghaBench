; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idmap_id_to_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idmap_id_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.ent = type { i32, i32, i32, i32, i32 }

@idtoname_lookup = common dso_local global i32 0, align 4
@idtoname_cache = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32, i32, i8*)* @idmap_id_to_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmap_id_to_name(%struct.svc_rqst* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ent*, align 8
  %11 = alloca %struct.ent, align 4
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 0
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 4
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ent, %struct.ent* %11, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %23 = call i32 @rqst_authname(%struct.svc_rqst* %22)
  %24 = call i32 @strlcpy(i32 %21, i32 %23, i32 4)
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %26 = load i32, i32* @idtoname_lookup, align 4
  %27 = call i32 @idmap_lookup(%struct.svc_rqst* %25, i32 %26, %struct.ent* %11, i32* @idtoname_cache, %struct.ent** %10)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %5, align 4
  br label %61

36:                                               ; preds = %4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %61

41:                                               ; preds = %36
  %42 = load %struct.ent*, %struct.ent** %10, align 8
  %43 = getelementptr inbounds %struct.ent, %struct.ent* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strlen(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @IDMAP_NAMESZ, align 4
  %48 = icmp sgt i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.ent*, %struct.ent** %10, align 8
  %53 = getelementptr inbounds %struct.ent, %struct.ent* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @memcpy(i8* %51, i32 %54, i32 %55)
  %57 = load %struct.ent*, %struct.ent** %10, align 8
  %58 = getelementptr inbounds %struct.ent, %struct.ent* %57, i32 0, i32 2
  %59 = call i32 @cache_put(i32* %58, i32* @idtoname_cache)
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %41, %39, %32
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @rqst_authname(%struct.svc_rqst*) #1

declare dso_local i32 @idmap_lookup(%struct.svc_rqst*, i32, %struct.ent*, i32*, %struct.ent**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
