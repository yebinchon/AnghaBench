; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_f2s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_coda_linux.c_coda_f2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CodaFid = type { i32* }

@coda_f2s.s = internal global [60 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"(%08x.%08x.%08x.%08x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @coda_f2s(%struct.CodaFid* %0) #0 {
  %2 = alloca %struct.CodaFid*, align 8
  store %struct.CodaFid* %0, %struct.CodaFid** %2, align 8
  %3 = load %struct.CodaFid*, %struct.CodaFid** %2, align 8
  %4 = getelementptr inbounds %struct.CodaFid, %struct.CodaFid* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.CodaFid*, %struct.CodaFid** %2, align 8
  %9 = getelementptr inbounds %struct.CodaFid, %struct.CodaFid* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.CodaFid*, %struct.CodaFid** %2, align 8
  %14 = getelementptr inbounds %struct.CodaFid, %struct.CodaFid* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.CodaFid*, %struct.CodaFid** %2, align 8
  %19 = getelementptr inbounds %struct.CodaFid, %struct.CodaFid* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @coda_f2s.s, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %12, i32 %17, i32 %22)
  ret i8* getelementptr inbounds ([60 x i8], [60 x i8]* @coda_f2s.s, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
