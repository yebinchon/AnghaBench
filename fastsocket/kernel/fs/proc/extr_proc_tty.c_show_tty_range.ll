; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_tty.c_show_tty_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_tty.c_show_tty_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.tty_driver = type { i8*, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%-20s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/dev/%-8s \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%3d %d-%d \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%3d %7d \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@SYSTEM_TYPE_TTY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c":/dev/tty\00", align 1
@SYSTEM_TYPE_SYSCONS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c":console\00", align 1
@SYSTEM_TYPE_CONSOLE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c":vtmaster\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"pty:master\00", align 1
@PTY_TYPE_SLAVE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"pty:slave\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"type:%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.tty_driver*, i32, i32)* @show_tty_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_tty_range(%struct.seq_file* %0, %struct.tty_driver* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.tty_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.tty_driver* %1, %struct.tty_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %10 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %11 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %16 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i8* [ %17, %14 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %23 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %24 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %28 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @MAJOR(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @MINOR(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @MINOR(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = sub nsw i64 %41, 1
  %43 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %34, i64 %36, i64 %42)
  br label %51

44:                                               ; preds = %19
  %45 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @MAJOR(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @MINOR(i32 %48)
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %47, i64 %49)
  br label %51

51:                                               ; preds = %44, %31
  %52 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %53 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %116 [
    i32 128, label %55
    i32 131, label %87
    i32 129, label %90
    i32 130, label %93
  ]

55:                                               ; preds = %51
  %56 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %59 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SYSTEM_TYPE_TTY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %86

66:                                               ; preds = %55
  %67 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %68 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SYSTEM_TYPE_SYSCONS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %74 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %85

75:                                               ; preds = %66
  %76 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %77 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SYSTEM_TYPE_CONSOLE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %63
  br label %125

87:                                               ; preds = %51
  %88 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %89 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %125

90:                                               ; preds = %51
  %91 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %125

93:                                               ; preds = %51
  %94 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %95 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %115

102:                                              ; preds = %93
  %103 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %104 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PTY_TYPE_SLAVE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %110 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %114

111:                                              ; preds = %102
  %112 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %113 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %99
  br label %125

116:                                              ; preds = %51
  %117 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %118 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %119 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %122 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %120, i64 %123)
  br label %125

125:                                              ; preds = %116, %115, %90, %87, %86
  %126 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %127 = call i32 @seq_putc(%struct.seq_file* %126, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
