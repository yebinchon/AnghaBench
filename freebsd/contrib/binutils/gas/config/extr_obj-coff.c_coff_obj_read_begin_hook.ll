; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_obj_read_begin_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-coff.c_coff_obj_read_begin_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYMESZ = common dso_local global i64 0, align 8
@AUXESZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coff_obj_read_begin_hook() #0 {
  %1 = call i32 @know(i32 1)
  %2 = load i64, i64* @SYMESZ, align 8
  %3 = load i64, i64* @AUXESZ, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @know(i32 %5)
  %7 = call i32 (...) @tag_init()
  ret void
}

declare dso_local i32 @know(i32) #1

declare dso_local i32 @tag_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
