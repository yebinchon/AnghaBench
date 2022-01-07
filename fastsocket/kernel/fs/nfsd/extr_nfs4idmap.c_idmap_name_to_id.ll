; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idmap_name_to_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idmap_name_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.ent = type { i32, i8*, i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@nametoid_lookup = common dso_local global i32 0, align 4
@nametoid_cache = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32, i8*, i32, i32*)* @idmap_name_to_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmap_name_to_id(%struct.svc_rqst* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ent*, align 8
  %13 = alloca %struct.ent, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = bitcast %struct.ent* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 0
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ESRCH, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %64

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @memcpy(i8* %27, i8* %28, i32 %29)
  %31 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.ent, %struct.ent* %13, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %39 = call i32 @rqst_authname(%struct.svc_rqst* %38)
  %40 = call i32 @strlcpy(i32 %37, i32 %39, i32 4)
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %42 = load i32, i32* @nametoid_lookup, align 4
  %43 = call i32 @idmap_lookup(%struct.svc_rqst* %41, i32 %42, %struct.ent* %13, i32* @nametoid_cache, %struct.ent** %12)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = load i32, i32* @ESRCH, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %48, %25
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %6, align 4
  br label %64

56:                                               ; preds = %51
  %57 = load %struct.ent*, %struct.ent** %12, align 8
  %58 = getelementptr inbounds %struct.ent, %struct.ent* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.ent*, %struct.ent** %12, align 8
  %62 = getelementptr inbounds %struct.ent, %struct.ent* %61, i32 0, i32 2
  %63 = call i32 @cache_put(i32* %62, i32* @nametoid_cache)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %56, %54, %22
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @rqst_authname(%struct.svc_rqst*) #2

declare dso_local i32 @idmap_lookup(%struct.svc_rqst*, i32, %struct.ent*, i32*, %struct.ent**) #2

declare dso_local i32 @cache_put(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
