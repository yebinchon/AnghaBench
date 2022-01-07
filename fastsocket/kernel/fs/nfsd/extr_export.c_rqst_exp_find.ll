; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_rqst_exp_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_rqst_exp_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i64 }
%struct.svc_rqst = type { i32, i32*, i32* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_export* @rqst_exp_find(%struct.svc_rqst* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.svc_export*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svc_export*, align 8
  %9 = alloca %struct.svc_export*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.svc_export* @ERR_PTR(i32 %11)
  store %struct.svc_export* %12, %struct.svc_export** %9, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 0
  %26 = call %struct.svc_export* @exp_find(i32* %21, i32 %22, i32* %23, i32* %25)
  store %struct.svc_export* %26, %struct.svc_export** %9, align 8
  %27 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %28 = call i32 @PTR_ERR(%struct.svc_export* %27)
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %47

33:                                               ; preds = %18
  %34 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %35 = call i64 @IS_ERR(%struct.svc_export* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %38, %struct.svc_export** %4, align 8
  br label %79

39:                                               ; preds = %33
  %40 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %41 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %45, %struct.svc_export** %4, align 8
  br label %79

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %32, %17
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %49 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %53, %struct.svc_export** %4, align 8
  br label %79

54:                                               ; preds = %47
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %61 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %60, i32 0, i32 0
  %62 = call %struct.svc_export* @exp_find(i32* %57, i32 %58, i32* %59, i32* %61)
  store %struct.svc_export* %62, %struct.svc_export** %8, align 8
  %63 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %64 = call i32 @PTR_ERR(%struct.svc_export* %63)
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  store %struct.svc_export* %69, %struct.svc_export** %4, align 8
  br label %79

70:                                               ; preds = %54
  %71 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %72 = call i64 @IS_ERR(%struct.svc_export* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %76 = call i32 @exp_put(%struct.svc_export* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  store %struct.svc_export* %78, %struct.svc_export** %4, align 8
  br label %79

79:                                               ; preds = %77, %68, %52, %44, %37
  %80 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  ret %struct.svc_export* %80
}

declare dso_local %struct.svc_export* @ERR_PTR(i32) #1

declare dso_local %struct.svc_export* @exp_find(i32*, i32, i32*, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_export*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
