; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_validate_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_validate_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exec_bfd = common dso_local global i64 0, align 8
@core_bfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"core file may not match specified executable file.\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"exec file is newer than core file.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_files() #0 {
  %1 = load i64, i64* @exec_bfd, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %23

3:                                                ; preds = %0
  %4 = load i64, i64* @core_bfd, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load i64, i64* @core_bfd, align 8
  %8 = load i64, i64* @exec_bfd, align 8
  %9 = call i32 @core_file_matches_executable_p(i64 %7, i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %22

13:                                               ; preds = %6
  %14 = load i64, i64* @exec_bfd, align 8
  %15 = call i64 @bfd_get_mtime(i64 %14)
  %16 = load i64, i64* @core_bfd, align 8
  %17 = call i64 @bfd_get_mtime(i64 %16)
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  br label %22

22:                                               ; preds = %21, %11
  br label %23

23:                                               ; preds = %22, %3, %0
  ret void
}

declare dso_local i32 @core_file_matches_executable_p(i64, i64) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @bfd_get_mtime(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
