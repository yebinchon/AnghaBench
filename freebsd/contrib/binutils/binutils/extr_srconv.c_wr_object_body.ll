; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_object_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_srconv.c_wr_object_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_ofile = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_ofile*)* @wr_object_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wr_object_body(%struct.coff_ofile* %0) #0 {
  %2 = alloca %struct.coff_ofile*, align 8
  %3 = alloca i32, align 4
  store %struct.coff_ofile* %0, %struct.coff_ofile** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %7 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %12 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %13 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @wr_sh(%struct.coff_ofile* %11, i64 %17)
  %19 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %20 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %21 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @wr_ob(%struct.coff_ofile* %19, i64 %25)
  %27 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %28 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %29 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @wr_rl(%struct.coff_ofile* %27, i64 %33)
  br label %35

35:                                               ; preds = %10
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4

38:                                               ; preds = %4
  ret void
}

declare dso_local i32 @wr_sh(%struct.coff_ofile*, i64) #1

declare dso_local i32 @wr_ob(%struct.coff_ofile*, i64) #1

declare dso_local i32 @wr_rl(%struct.coff_ofile*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
