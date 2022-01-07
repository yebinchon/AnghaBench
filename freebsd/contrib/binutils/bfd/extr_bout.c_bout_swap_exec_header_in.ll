; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_bout_swap_exec_header_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_bout_swap_exec_header_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.external_exec = type { i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.internal_exec = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.external_exec*, %struct.internal_exec*)* @bout_swap_exec_header_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bout_swap_exec_header_in(i32* %0, %struct.external_exec* %1, %struct.internal_exec* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.external_exec*, align 8
  %6 = alloca %struct.internal_exec*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.external_exec* %1, %struct.external_exec** %5, align 8
  store %struct.internal_exec* %2, %struct.internal_exec** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %9 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @H_GET_32(i32* %7, i32 %10)
  %12 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %13 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %12, i32 0, i32 13
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %16 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @GET_WORD(i32* %14, i32 %17)
  %19 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %20 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %19, i32 0, i32 12
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %23 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @GET_WORD(i32* %21, i32 %24)
  %26 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %27 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %26, i32 0, i32 11
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %30 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @GET_WORD(i32* %28, i32 %31)
  %33 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %34 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %33, i32 0, i32 10
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %37 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @GET_WORD(i32* %35, i32 %38)
  %40 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %41 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %44 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @GET_WORD(i32* %42, i32 %45)
  %47 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %48 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %51 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @GET_WORD(i32* %49, i32 %52)
  %54 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %55 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %58 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @GET_WORD(i32* %56, i32 %59)
  %61 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %62 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %65 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @GET_WORD(i32* %63, i32 %66)
  %68 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %69 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %72 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @GET_WORD(i32* %70, i32 %73)
  %75 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %76 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %78 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %83 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %85 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %90 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %92 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %97 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.external_exec*, %struct.external_exec** %5, align 8
  %99 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.internal_exec*, %struct.internal_exec** %6, align 8
  %104 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  ret void
}

declare dso_local i32 @H_GET_32(i32*, i32) #1

declare dso_local i8* @GET_WORD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
