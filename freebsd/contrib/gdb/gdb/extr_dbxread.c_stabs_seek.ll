; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_stabs_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_stabs_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stabs_data = common dso_local global i64 0, align 8
@symbuf_read = common dso_local global i32 0, align 4
@symbuf_left = common dso_local global i32 0, align 4
@symfile_bfd = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stabs_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stabs_seek(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @stabs_data, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @symbuf_read, align 4
  %8 = add nsw i32 %7, %6
  store i32 %8, i32* @symbuf_read, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @symbuf_left, align 4
  %11 = sub nsw i32 %10, %9
  store i32 %11, i32* @symbuf_left, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @symfile_bfd, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @SEEK_CUR, align 4
  %16 = call i32 @bfd_seek(i32 %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %5
  ret void
}

declare dso_local i32 @bfd_seek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
