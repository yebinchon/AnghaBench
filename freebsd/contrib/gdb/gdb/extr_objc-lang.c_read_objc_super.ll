; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_read_objc_super.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_read_objc_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objc_super = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.objc_super*)* @read_objc_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_objc_super(i64 %0, %struct.objc_super* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.objc_super*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.objc_super* %1, %struct.objc_super** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i8* @read_memory_unsigned_integer(i64 %5, i32 4)
  %7 = load %struct.objc_super*, %struct.objc_super** %4, align 8
  %8 = getelementptr inbounds %struct.objc_super, %struct.objc_super* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %9, 4
  %11 = call i8* @read_memory_unsigned_integer(i64 %10, i32 4)
  %12 = load %struct.objc_super*, %struct.objc_super** %4, align 8
  %13 = getelementptr inbounds %struct.objc_super, %struct.objc_super* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  ret void
}

declare dso_local i8* @read_memory_unsigned_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
