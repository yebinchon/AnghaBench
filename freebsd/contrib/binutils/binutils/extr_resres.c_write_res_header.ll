; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*, i32*)* @write_res_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_res_header(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @get_id_size(i32* %16)
  %18 = add nsw i32 24, %17
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @get_id_size(i32* %19)
  %21 = add nsw i32 %18, %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 3
  %26 = and i32 %25, -4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 3
  %30 = and i32 %29, -4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @write_res_data_hdr(i32* %31, i32 %32, %struct.TYPE_3__* %13)
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @write_res_id(i32* %34, i32 %35, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @write_res_id(i32* %38, i32 %39, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 3
  %44 = and i32 %43, -4
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @write_res_info(i32* %45, i32 %46, i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 3
  %51 = and i32 %50, -4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @get_id_size(i32*) #1

declare dso_local i32 @write_res_data_hdr(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @write_res_id(i32*, i32, i32*) #1

declare dso_local i32 @write_res_info(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
