; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_set_lock_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_set_lock_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lksb = type { i32, i32 }
%struct.dlm_args = type { i32, void (i8*)*, void (i8*, i32)*, i64, i32, %struct.dlm_lksb*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@DLM_RESNAME_MAXLEN = common dso_local global i32 0, align 4
@DLM_LKF_CANCEL = common dso_local global i32 0, align 4
@DLM_LKF_QUECVT = common dso_local global i32 0, align 4
@DLM_LKF_CONVDEADLK = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LKF_EXPEDITE = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i32 0, align 4
@DLM_LKF_VALBLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dlm_lksb*, i32, i32, i64, void (i8*)*, i8*, void (i8*, i32)*, %struct.dlm_args*)* @set_lock_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_lock_args(i32 %0, %struct.dlm_lksb* %1, i32 %2, i32 %3, i64 %4, void (i8*)* %5, i8* %6, void (i8*, i32)* %7, %struct.dlm_args* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_lksb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca void (i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca void (i8*, i32)*, align 8
  %18 = alloca %struct.dlm_args*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.dlm_lksb* %1, %struct.dlm_lksb** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store void (i8*)* %5, void (i8*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store void (i8*, i32)* %7, void (i8*, i32)** %17, align 8
  store %struct.dlm_args* %8, %struct.dlm_args** %18, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @DLM_LOCK_EX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %9
  br label %172

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @DLM_RESNAME_MAXLEN, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %172

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @DLM_LKF_CANCEL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %172

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @DLM_LKF_QUECVT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %172

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DLM_LKF_CONVDEADLK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %172

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @DLM_LKF_CONVDEADLK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %172

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @DLM_LKF_EXPEDITE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %172

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @DLM_LKF_EXPEDITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @DLM_LKF_QUECVT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %172

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @DLM_LKF_EXPEDITE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %172

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @DLM_LKF_EXPEDITE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @DLM_LOCK_NL, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %172

121:                                              ; preds = %116, %111
  %122 = load void (i8*)*, void (i8*)** %15, align 8
  %123 = icmp ne void (i8*)* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.dlm_lksb*, %struct.dlm_lksb** %11, align 8
  %126 = icmp ne %struct.dlm_lksb* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %124, %121
  br label %172

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @DLM_LKF_VALBLK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.dlm_lksb*, %struct.dlm_lksb** %11, align 8
  %135 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %172

139:                                              ; preds = %133, %128
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.dlm_lksb*, %struct.dlm_lksb** %11, align 8
  %146 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  br label %172

150:                                              ; preds = %144, %139
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.dlm_args*, %struct.dlm_args** %18, align 8
  %153 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load void (i8*)*, void (i8*)** %15, align 8
  %155 = load %struct.dlm_args*, %struct.dlm_args** %18, align 8
  %156 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %155, i32 0, i32 1
  store void (i8*)* %154, void (i8*)** %156, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = load %struct.dlm_args*, %struct.dlm_args** %18, align 8
  %159 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load void (i8*, i32)*, void (i8*, i32)** %17, align 8
  %161 = load %struct.dlm_args*, %struct.dlm_args** %18, align 8
  %162 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %161, i32 0, i32 2
  store void (i8*, i32)* %160, void (i8*, i32)** %162, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.dlm_args*, %struct.dlm_args** %18, align 8
  %165 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.dlm_args*, %struct.dlm_args** %18, align 8
  %168 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load %struct.dlm_lksb*, %struct.dlm_lksb** %11, align 8
  %170 = load %struct.dlm_args*, %struct.dlm_args** %18, align 8
  %171 = getelementptr inbounds %struct.dlm_args, %struct.dlm_args* %170, i32 0, i32 5
  store %struct.dlm_lksb* %169, %struct.dlm_lksb** %171, align 8
  store i32 0, i32* %19, align 4
  br label %172

172:                                              ; preds = %150, %149, %138, %127, %120, %110, %99, %88, %77, %66, %55, %44, %38, %28
  %173 = load i32, i32* %19, align 4
  ret i32 %173
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
