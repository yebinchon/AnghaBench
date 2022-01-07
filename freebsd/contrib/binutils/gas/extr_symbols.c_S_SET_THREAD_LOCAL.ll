; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_S_SET_THREAD_LOCAL.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_S_SET_THREAD_LOCAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.local_symbol = type { i32 }

@BSF_THREAD_LOCAL = common dso_local global i32 0, align 4
@BSF_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Accessing function `%s' as thread-local object\00", align 1
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Accessing `%s' as thread-local object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_SET_THREAD_LOCAL(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = call i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_10__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = bitcast %struct.TYPE_10__* %7 to %struct.local_symbol*
  %9 = call %struct.TYPE_10__* @local_symbol_convert(%struct.local_symbol* %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %2, align 8
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = call i64 @bfd_is_com_section(%struct.TYPE_11__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BSF_THREAD_LOCAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %74

28:                                               ; preds = %18, %10
  %29 = load i32, i32* @BSF_THREAD_LOCAL, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BSF_FUNCTION, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = call i32 @S_GET_NAME(%struct.TYPE_10__* %46)
  %48 = call i32 @as_bad(i32 %45, i32 %47)
  br label %74

49:                                               ; preds = %28
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = call i32 @bfd_is_und_section(%struct.TYPE_11__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %71 = call i32 @S_GET_NAME(%struct.TYPE_10__* %70)
  %72 = call i32 @as_bad(i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %68, %57, %49
  br label %74

74:                                               ; preds = %27, %73, %44
  ret void
}

declare dso_local i64 @LOCAL_SYMBOL_CHECK(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @local_symbol_convert(%struct.local_symbol*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_11__*) #1

declare dso_local i32 @as_bad(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @S_GET_NAME(%struct.TYPE_10__*) #1

declare dso_local i32 @bfd_is_und_section(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
