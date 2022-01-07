; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_stats.c_svc_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_stats.c_svc_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.svc_stat = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.svc_program* }
%struct.svc_program = type { i32, %struct.svc_version** }
%struct.svc_version = type { i32, %struct.svc_procedure* }
%struct.svc_procedure = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"net %u %u %u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"rpc %u %u %u %u %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"proc%d %u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_seq_show(%struct.seq_file* %0, %struct.svc_stat* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.svc_stat*, align 8
  %5 = alloca %struct.svc_program*, align 8
  %6 = alloca %struct.svc_procedure*, align 8
  %7 = alloca %struct.svc_version*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.svc_stat* %1, %struct.svc_stat** %4, align 8
  %10 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %11 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %10, i32 0, i32 8
  %12 = load %struct.svc_program*, %struct.svc_program** %11, align 8
  store %struct.svc_program* %12, %struct.svc_program** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %15 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %18 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %21 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %24 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %29 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %32 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %35 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %39 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %43 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %46 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.svc_stat*, %struct.svc_stat** %4, align 8
  %49 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 %41, i64 %44, i64 %47, i64 %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %100, %2
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %55 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %52
  %59 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %60 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %59, i32 0, i32 1
  %61 = load %struct.svc_version**, %struct.svc_version*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.svc_version*, %struct.svc_version** %61, i64 %63
  %65 = load %struct.svc_version*, %struct.svc_version** %64, align 8
  store %struct.svc_version* %65, %struct.svc_version** %7, align 8
  %66 = icmp ne %struct.svc_version* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.svc_version*, %struct.svc_version** %7, align 8
  %69 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %68, i32 0, i32 1
  %70 = load %struct.svc_procedure*, %struct.svc_procedure** %69, align 8
  store %struct.svc_procedure* %70, %struct.svc_procedure** %6, align 8
  %71 = icmp ne %struct.svc_procedure* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %58
  br label %100

73:                                               ; preds = %67
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.svc_version*, %struct.svc_version** %7, align 8
  %77 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78)
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %92, %73
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.svc_version*, %struct.svc_version** %7, align 8
  %83 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %89 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load %struct.svc_procedure*, %struct.svc_procedure** %6, align 8
  %96 = getelementptr inbounds %struct.svc_procedure, %struct.svc_procedure* %95, i32 1
  store %struct.svc_procedure* %96, %struct.svc_procedure** %6, align 8
  br label %80

97:                                               ; preds = %80
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = call i32 @seq_putc(%struct.seq_file* %98, i8 signext 10)
  br label %100

100:                                              ; preds = %97, %72
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %52

103:                                              ; preds = %52
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
