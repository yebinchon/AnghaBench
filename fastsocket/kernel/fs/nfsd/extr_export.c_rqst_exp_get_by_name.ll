; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_rqst_exp_get_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_rqst_exp_get_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i64 }
%struct.svc_rqst = type { i32, i32*, i32* }
%struct.path = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_export* @rqst_exp_get_by_name(%struct.svc_rqst* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.svc_export*, align 8
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.svc_export*, align 8
  %7 = alloca %struct.svc_export*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.svc_export* @ERR_PTR(i32 %9)
  store %struct.svc_export* %10, %struct.svc_export** %7, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.path*, %struct.path** %5, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 0
  %23 = call %struct.svc_export* @exp_get_by_name(i32* %19, %struct.path* %20, i32* %22)
  store %struct.svc_export* %23, %struct.svc_export** %7, align 8
  %24 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.svc_export* %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %44

30:                                               ; preds = %16
  %31 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %32 = call i64 @IS_ERR(%struct.svc_export* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %35, %struct.svc_export** %3, align 8
  br label %75

36:                                               ; preds = %30
  %37 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %38 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %42, %struct.svc_export** %3, align 8
  br label %75

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %29, %15
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %50, %struct.svc_export** %3, align 8
  br label %75

51:                                               ; preds = %44
  %52 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %53 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.path*, %struct.path** %5, align 8
  %56 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %57 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %56, i32 0, i32 0
  %58 = call %struct.svc_export* @exp_get_by_name(i32* %54, %struct.path* %55, i32* %57)
  store %struct.svc_export* %58, %struct.svc_export** %6, align 8
  %59 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  %60 = call i32 @PTR_ERR(%struct.svc_export* %59)
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  store %struct.svc_export* %65, %struct.svc_export** %3, align 8
  br label %75

66:                                               ; preds = %51
  %67 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %68 = call i64 @IS_ERR(%struct.svc_export* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load %struct.svc_export*, %struct.svc_export** %7, align 8
  %72 = call i32 @exp_put(%struct.svc_export* %71)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.svc_export*, %struct.svc_export** %6, align 8
  store %struct.svc_export* %74, %struct.svc_export** %3, align 8
  br label %75

75:                                               ; preds = %73, %64, %49, %41, %34
  %76 = load %struct.svc_export*, %struct.svc_export** %3, align 8
  ret %struct.svc_export* %76
}

declare dso_local %struct.svc_export* @ERR_PTR(i32) #1

declare dso_local %struct.svc_export* @exp_get_by_name(i32*, %struct.path*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
