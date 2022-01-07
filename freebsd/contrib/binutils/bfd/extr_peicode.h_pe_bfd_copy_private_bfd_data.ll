; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_bfd_copy_private_bfd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_bfd_copy_private_bfd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@IMAGE_FILE_LARGE_ADDRESS_AWARE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pe_bfd_copy_private_bfd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pe_bfd_copy_private_bfd_data(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call %struct.TYPE_2__* @pe_data(i32* %6)
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_2__* @pe_data(i32* %10)
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_2__* @pe_data(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IMAGE_FILE_LARGE_ADDRESS_AWARE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i32, i32* @IMAGE_FILE_LARGE_ADDRESS_AWARE, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_2__* @pe_data(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %13, %9, %2
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @_bfd_XX_bfd_copy_private_bfd_data_common(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %28
  br i1 true, label %36, label %40

36:                                               ; preds = %35
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @pe_saved_coff_bfd_copy_private_bfd_data(i32* %37, i32* %38)
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %36, %33
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_2__* @pe_data(i32*) #1

declare dso_local i32 @_bfd_XX_bfd_copy_private_bfd_data_common(i32*, i32*) #1

declare dso_local i32 @pe_saved_coff_bfd_copy_private_bfd_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
