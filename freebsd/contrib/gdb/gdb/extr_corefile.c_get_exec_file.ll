; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_get_exec_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_get_exec_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_bfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"No executable file specified.\0AUse the \22file\22 or \22exec-file\22 command.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_exec_file(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @exec_bfd, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* @exec_bfd, align 8
  %8 = call i8* @bfd_get_filename(i64 %7)
  store i8* %8, i8** %2, align 8
  br label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %15

13:                                               ; preds = %9
  %14 = call i32 @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %15

15:                                               ; preds = %13, %12, %6
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local i8* @bfd_get_filename(i64) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
