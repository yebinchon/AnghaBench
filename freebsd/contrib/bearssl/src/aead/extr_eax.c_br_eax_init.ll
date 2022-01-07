; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_eax.c_br_eax_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/aead/extr_eax.c_br_eax_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_7__**, i32* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__**, i8*, i8*, i32)* }

@br_eax_vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_eax_init(%struct.TYPE_6__* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32* @br_eax_vtable, i32** %8, align 8
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store %struct.TYPE_7__** %9, %struct.TYPE_7__*** %11, align 8
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 16)
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i32 0, i32 16)
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_7__**, i8*, i8*, i32)*, i32 (%struct.TYPE_7__**, i8*, i8*, i32)** %18, align 8
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %23 = call i32 %19(%struct.TYPE_7__** %20, i8* %21, i8* %22, i32 16)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %28 = call i32 @double_gf128(i8* %26, i8* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @double_gf128(i8* %31, i8* %34)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @double_gf128(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
