; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_install_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_install_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@stdoutput = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"relocation overflow\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"relocation out of range\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%s:%u: bad return from bfd_install_relocation: %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i8*, i32)* @install_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_reloc(i32* %0, i32* %1, %struct.TYPE_3__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @stdoutput, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @bfd_install_relocation(i32 %13, i32* %14, i32 %17, i32 %20, i32* %21, i8** %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %35 [
    i32 130, label %24
    i32 128, label %25
    i32 129, label %30
  ]

24:                                               ; preds = %5
  br label %41

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @as_bad_where(i8* %26, i32 %27, i32 %28)
  br label %41

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @as_bad_where(i8* %31, i32 %32, i32 %33)
  br label %41

35:                                               ; preds = %5
  %36 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @as_fatal(i32 %36, i8* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %30, %25, %24
  ret void
}

declare dso_local i32 @bfd_install_relocation(i32, i32*, i32, i32, i32*, i8**) #1

declare dso_local i32 @as_bad_where(i8*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @as_fatal(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
