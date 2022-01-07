; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_find_completer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_find_completer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16 }
%struct.TYPE_4__ = type { i16, i16, i16 }

@main_table = common dso_local global %struct.TYPE_3__* null, align 8
@completer_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16, i16, i8*)* @find_completer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @find_completer(i16 signext %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call signext i16 @find_string_ent(i8* %9)
  store i16 %10, i16* %8, align 2
  %11 = load i16, i16* %8, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i16 -1, i16* %4, align 2
  br label %59

15:                                               ; preds = %3
  %16 = load i16, i16* %6, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @main_table, align 8
  %21 = load i16, i16* %5, align 2
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 2
  store i16 %25, i16* %6, align 2
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completer_table, align 8
  %28 = load i16, i16* %6, align 2
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %6, align 2
  br label %33

33:                                               ; preds = %26, %19
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i16, i16* %6, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completer_table, align 8
  %40 = load i16, i16* %6, align 2
  %41 = sext i16 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = load i16, i16* %8, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i16, i16* %6, align 2
  store i16 %50, i16* %4, align 2
  br label %59

51:                                               ; preds = %38
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completer_table, align 8
  %53 = load i16, i16* %6, align 2
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i16, i16* %56, align 2
  store i16 %57, i16* %6, align 2
  br label %34

58:                                               ; preds = %34
  store i16 -1, i16* %4, align 2
  br label %59

59:                                               ; preds = %58, %49, %14
  %60 = load i16, i16* %4, align 2
  ret i16 %60
}

declare dso_local signext i16 @find_string_ent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
