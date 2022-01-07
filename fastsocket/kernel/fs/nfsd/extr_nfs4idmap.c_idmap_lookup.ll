; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idmap_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4idmap.c_idmap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.ent = type { i32 }
%struct.cache_detail = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.ent* (%struct.ent*)*, %struct.ent*, %struct.cache_detail*, %struct.ent**)* @idmap_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmap_lookup(%struct.svc_rqst* %0, %struct.ent* (%struct.ent*)* %1, %struct.ent* %2, %struct.cache_detail* %3, %struct.ent** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.ent* (%struct.ent*)*, align 8
  %9 = alloca %struct.ent*, align 8
  %10 = alloca %struct.cache_detail*, align 8
  %11 = alloca %struct.ent**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ent*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.ent* (%struct.ent*)* %1, %struct.ent* (%struct.ent*)** %8, align 8
  store %struct.ent* %2, %struct.ent** %9, align 8
  store %struct.cache_detail* %3, %struct.cache_detail** %10, align 8
  store %struct.ent** %4, %struct.ent*** %11, align 8
  %14 = load %struct.ent* (%struct.ent*)*, %struct.ent* (%struct.ent*)** %8, align 8
  %15 = load %struct.ent*, %struct.ent** %9, align 8
  %16 = call %struct.ent* %14(%struct.ent* %15)
  %17 = load %struct.ent**, %struct.ent*** %11, align 8
  store %struct.ent* %16, %struct.ent** %17, align 8
  %18 = load %struct.ent**, %struct.ent*** %11, align 8
  %19 = load %struct.ent*, %struct.ent** %18, align 8
  %20 = icmp ne %struct.ent* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %57

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %48, %24
  %26 = load %struct.cache_detail*, %struct.cache_detail** %10, align 8
  %27 = load %struct.ent**, %struct.ent*** %11, align 8
  %28 = load %struct.ent*, %struct.ent** %27, align 8
  %29 = getelementptr inbounds %struct.ent, %struct.ent* %28, i32 0, i32 0
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %31 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %30, i32 0, i32 0
  %32 = call i32 @cache_check(%struct.cache_detail* %26, i32* %29, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %25
  %38 = load %struct.ent**, %struct.ent*** %11, align 8
  %39 = load %struct.ent*, %struct.ent** %38, align 8
  store %struct.ent* %39, %struct.ent** %13, align 8
  %40 = load %struct.ent* (%struct.ent*)*, %struct.ent* (%struct.ent*)** %8, align 8
  %41 = load %struct.ent*, %struct.ent** %9, align 8
  %42 = call %struct.ent* %40(%struct.ent* %41)
  %43 = load %struct.ent**, %struct.ent*** %11, align 8
  store %struct.ent* %42, %struct.ent** %43, align 8
  %44 = load %struct.ent**, %struct.ent*** %11, align 8
  %45 = load %struct.ent*, %struct.ent** %44, align 8
  %46 = load %struct.ent*, %struct.ent** %13, align 8
  %47 = icmp ne %struct.ent* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %25

49:                                               ; preds = %37
  %50 = load %struct.ent**, %struct.ent*** %11, align 8
  %51 = load %struct.ent*, %struct.ent** %50, align 8
  %52 = getelementptr inbounds %struct.ent, %struct.ent* %51, i32 0, i32 0
  %53 = load %struct.cache_detail*, %struct.cache_detail** %10, align 8
  %54 = call i32 @cache_put(i32* %52, %struct.cache_detail* %53)
  br label %55

55:                                               ; preds = %49, %25
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %21
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @cache_check(%struct.cache_detail*, i32*, i32*) #1

declare dso_local i32 @cache_put(i32*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
