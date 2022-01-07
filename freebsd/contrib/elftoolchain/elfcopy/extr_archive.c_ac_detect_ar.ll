; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_ac_detect_ar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_ac_detect_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ac_detect_ar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  %7 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %7, %struct.archive** %4, align 8
  %8 = icmp eq %struct.archive* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = call i32 @archive_read_support_format_ar(%struct.archive* %11)
  %13 = load %struct.archive*, %struct.archive** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @archive_read_open_fd(%struct.archive* %13, i32 %14, i32 10240)
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = call i32 @archive_read_next_header(%struct.archive* %19, %struct.archive_entry** %5)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = load %struct.archive*, %struct.archive** %4, align 8
  %23 = call i32 @archive_read_close(%struct.archive* %22)
  %24 = load %struct.archive*, %struct.archive** %4, align 8
  %25 = call i32 @archive_read_free(%struct.archive* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_ar(%struct.archive*) #1

declare dso_local i32 @archive_read_open_fd(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
