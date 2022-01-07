; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work-debugfs.c_slow_work_print_mark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work-debugfs.c_slow_work_print_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.seq_file = type { i32 }
%struct.slow_work = type { i32 }

@CURRENT_TIME = common dso_local global %struct.timespec zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"  -ve \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%3luns \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%3luus \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%3lums \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"   1s \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%4lus \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%4lum \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%4luh \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"exces \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.slow_work*)* @slow_work_print_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slow_work_print_mark(%struct.seq_file* %0, %struct.slow_work* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.slow_work*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.slow_work* %1, %struct.slow_work** %4, align 8
  %8 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME to i8*), i64 8, i1 false)
  %9 = load %struct.slow_work*, %struct.slow_work** %4, align 8
  %10 = getelementptr inbounds %struct.slow_work, %struct.slow_work* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %struct.timespec* %5 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = call i64 @timespec_sub(i64 %13, i32 %11)
  %15 = bitcast %struct.timespec* %7 to i64*
  store i64 %14, i64* %15, align 4
  %16 = bitcast %struct.timespec* %6 to i8*
  %17 = bitcast %struct.timespec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %111

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 1000
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %110

37:                                               ; preds = %28, %24
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 1000000
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 1000
  %50 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %109

51:                                               ; preds = %41, %37
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 1000000000
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 1000000
  %64 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %108

65:                                               ; preds = %55, %51
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = call i32 @seq_puts(%struct.seq_file* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %107

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 60
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %106

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 3600
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 60
  %90 = call i32 @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  br label %105

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 86400
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 3600
  %100 = call i32 @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  br label %104

101:                                              ; preds = %91
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %95
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %76
  br label %107

107:                                              ; preds = %106, %69
  br label %108

108:                                              ; preds = %107, %59
  br label %109

109:                                              ; preds = %108, %45
  br label %110

110:                                              ; preds = %109, %32
  br label %111

111:                                              ; preds = %110, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @timespec_sub(i64, i32) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
