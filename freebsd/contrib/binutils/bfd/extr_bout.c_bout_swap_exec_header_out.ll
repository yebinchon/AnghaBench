; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_bout_swap_exec_header_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_bout_swap_exec_header_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_exec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.external_exec = type { i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.internal_exec*, %struct.external_exec*)* @bout_swap_exec_header_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bout_swap_exec_header_out(i32* %0, %struct.internal_exec* %1, %struct.external_exec* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.internal_exec*, align 8
  %6 = alloca %struct.external_exec*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.internal_exec* %1, %struct.internal_exec** %5, align 8
  store %struct.external_exec* %2, %struct.external_exec** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %9 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %12 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @H_PUT_32(i32* %7, i32 %10, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %17 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %20 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PUT_WORD(i32* %15, i32 %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %25 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %28 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PUT_WORD(i32* %23, i32 %26, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %33 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %36 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PUT_WORD(i32* %31, i32 %34, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %41 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %44 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PUT_WORD(i32* %39, i32 %42, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %49 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %52 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PUT_WORD(i32* %47, i32 %50, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %57 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %60 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PUT_WORD(i32* %55, i32 %58, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %65 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %68 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PUT_WORD(i32* %63, i32 %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %73 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %76 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PUT_WORD(i32* %71, i32 %74, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %81 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %84 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PUT_WORD(i32* %79, i32 %82, i32 %85)
  %87 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %88 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %91 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %95 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %98 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %102 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %105 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %103, i32* %107, align 4
  %108 = load %struct.internal_exec*, %struct.internal_exec** %5, align 8
  %109 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.external_exec*, %struct.external_exec** %6, align 8
  %112 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %110, i32* %114, align 4
  ret void
}

declare dso_local i32 @H_PUT_32(i32*, i32, i32) #1

declare dso_local i32 @PUT_WORD(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
