; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_bc_audit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_bc_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_bc_op = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @inet_diag_bc_audit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_bc_audit(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_diag_bc_op*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %86, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %11
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.inet_diag_bc_op*
  store %struct.inet_diag_bc_op* %16, %struct.inet_diag_bc_op** %8, align 8
  %17 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %18 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %62 [
    i32 136, label %20
    i32 130, label %20
    i32 135, label %20
    i32 129, label %20
    i32 128, label %20
    i32 134, label %20
    i32 133, label %20
    i32 132, label %20
    i32 131, label %61
  ]

20:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %21 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %22 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %27 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 4
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %34 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %25, %20
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %32
  %42 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %43 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %52 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = call i32 @valid_cc(i8* %48, i32 %49, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %107

60:                                               ; preds = %47, %41
  br label %65

61:                                               ; preds = %14
  br label %65

62:                                               ; preds = %14
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %107

65:                                               ; preds = %61, %60
  %66 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %67 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %72 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 4
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %79 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 3
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %70, %65
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %107

86:                                               ; preds = %77
  %87 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %88 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr i8, i8* %90, i64 %91
  store i8* %92, i8** %6, align 8
  %93 = load %struct.inet_diag_bc_op*, %struct.inet_diag_bc_op** %8, align 8
  %94 = getelementptr inbounds %struct.inet_diag_bc_op, %struct.inet_diag_bc_op* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %11

98:                                               ; preds = %11
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  br label %105

105:                                              ; preds = %102, %101
  %106 = phi i32 [ 0, %101 ], [ %104, %102 ]
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %83, %62, %57, %38
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @valid_cc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
