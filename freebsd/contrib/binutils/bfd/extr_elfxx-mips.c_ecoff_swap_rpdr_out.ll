; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_ecoff_swap_rpdr_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c_ecoff_swap_rpdr_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpdr_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, %struct.rpdr_ext*)* @ecoff_swap_rpdr_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecoff_swap_rpdr_out(i32* %0, %struct.TYPE_3__* %1, %struct.rpdr_ext* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.rpdr_ext*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store %struct.rpdr_ext* %2, %struct.rpdr_ext** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %12 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @H_PUT_S32(i32* %7, i32 %10, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %20 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @H_PUT_32(i32* %15, i32 %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %28 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @H_PUT_32(i32* %23, i32 %26, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %36 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @H_PUT_32(i32* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %44 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @H_PUT_32(i32* %39, i32 %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %52 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @H_PUT_32(i32* %47, i32 %50, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %60 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @H_PUT_16(i32* %55, i32 %58, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %68 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @H_PUT_16(i32* %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rpdr_ext*, %struct.rpdr_ext** %6, align 8
  %76 = getelementptr inbounds %struct.rpdr_ext, %struct.rpdr_ext* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @H_PUT_32(i32* %71, i32 %74, i32 %77)
  ret void
}

declare dso_local i32 @H_PUT_S32(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @H_PUT_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
