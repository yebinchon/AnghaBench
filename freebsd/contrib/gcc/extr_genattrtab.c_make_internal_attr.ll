; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_make_internal_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_make_internal_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { i32, i32, i64, i64 }

@ATTR_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @make_internal_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_internal_attr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.attr_desc*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call %struct.attr_desc* @find_attr(i8** %4, i32 1)
  store %struct.attr_desc* %8, %struct.attr_desc** %7, align 8
  %9 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %10 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %17 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %19 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ATTR_SPECIAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %26 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %29 = call i64 @get_attr_value(i32 %27, %struct.attr_desc* %28, i32 -2)
  %30 = load %struct.attr_desc*, %struct.attr_desc** %7, align 8
  %31 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  ret void
}

declare dso_local %struct.attr_desc* @find_attr(i8**, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @get_attr_value(i32, %struct.attr_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
