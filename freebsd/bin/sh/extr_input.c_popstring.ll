; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_popstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_popstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.strpush, %struct.strpush* }
%struct.strpush = type { i8*, %struct.strpush*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32 }

@parsefile = common dso_local global %struct.TYPE_4__* null, align 8
@INTOFF = common dso_local global i32 0, align 4
@parsenextc = common dso_local global i8* null, align 8
@ALIASINUSE = common dso_local global i32 0, align 4
@parsenleft = common dso_local global i32 0, align 4
@parselleft = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @popstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @popstring() #0 {
  %1 = alloca %struct.strpush*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %4 = load %struct.strpush*, %struct.strpush** %3, align 8
  store %struct.strpush* %4, %struct.strpush** %1, align 8
  %5 = load i32, i32* @INTOFF, align 4
  %6 = load %struct.strpush*, %struct.strpush** %1, align 8
  %7 = getelementptr inbounds %struct.strpush, %struct.strpush* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %0
  %11 = load i8*, i8** @parsenextc, align 8
  %12 = load %struct.strpush*, %struct.strpush** %1, align 8
  %13 = getelementptr inbounds %struct.strpush, %struct.strpush* %12, i32 0, i32 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %11, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = load i8*, i8** @parsenextc, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** @parsenextc, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 9
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18
  %31 = call i32 (...) @forcealias()
  br label %32

32:                                               ; preds = %30, %24, %10
  %33 = load i32, i32* @ALIASINUSE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.strpush*, %struct.strpush** %1, align 8
  %36 = getelementptr inbounds %struct.strpush, %struct.strpush* %35, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %34
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %32, %0
  %42 = load %struct.strpush*, %struct.strpush** %1, align 8
  %43 = getelementptr inbounds %struct.strpush, %struct.strpush* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** @parsenextc, align 8
  %45 = load %struct.strpush*, %struct.strpush** %1, align 8
  %46 = getelementptr inbounds %struct.strpush, %struct.strpush* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @parsenleft, align 4
  %48 = load %struct.strpush*, %struct.strpush** %1, align 8
  %49 = getelementptr inbounds %struct.strpush, %struct.strpush* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* @parselleft, align 4
  %51 = load %struct.strpush*, %struct.strpush** %1, align 8
  %52 = getelementptr inbounds %struct.strpush, %struct.strpush* %51, i32 0, i32 1
  %53 = load %struct.strpush*, %struct.strpush** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store %struct.strpush* %53, %struct.strpush** %55, align 8
  %56 = load %struct.strpush*, %struct.strpush** %1, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @parsefile, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = icmp ne %struct.strpush* %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = load %struct.strpush*, %struct.strpush** %1, align 8
  %62 = call i32 @ckfree(%struct.strpush* %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @forcealias(...) #1

declare dso_local i32 @ckfree(%struct.strpush*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
