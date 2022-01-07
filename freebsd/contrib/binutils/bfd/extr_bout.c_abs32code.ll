; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_abs32code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_abs32code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.bfd_link_info = type { i32 }

@howto_reloc_abs32codeshrunk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*, i32, %struct.bfd_link_info*)* @abs32code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abs32code(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3, %struct.bfd_link_info* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfd_link_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.bfd_link_info* %4, %struct.bfd_link_info** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = load %struct.bfd_link_info*, %struct.bfd_link_info** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @get_value(%struct.TYPE_4__* %14, %struct.bfd_link_info* %15, i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @output_addr(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add i32 %19, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub i32 %25, %26
  %28 = sub i32 %24, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp slt i64 -8388608, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %5
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp slt i64 %34, 8388608
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32* @howto_reloc_abs32codeshrunk, i32** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 4
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 4
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %49, %50
  %52 = add i32 %51, 4
  %53 = call i32 @perform_slip(i32* %45, i32 4, i32* %46, i32 %52)
  br label %54

54:                                               ; preds = %36, %32, %5
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @get_value(%struct.TYPE_4__*, %struct.bfd_link_info*, i32*) #1

declare dso_local i32 @output_addr(i32*) #1

declare dso_local i32 @perform_slip(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
