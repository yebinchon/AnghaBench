; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_purge_cached_realpaths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_main.c_purge_cached_realpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@DIR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cached_realpath: purging %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @purge_cached_realpaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @purge_cached_realpaths() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_8__* (...) @get_cached_realpaths()
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %1, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = call %struct.TYPE_7__* @Hash_EnumFirst(i32* %7, i32* %4)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %2, align 8
  br label %9

9:                                                ; preds = %36, %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %9
  %13 = call %struct.TYPE_7__* @Hash_EnumNext(i32* %4)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 47
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load i32, i32* @DIR, align 4
  %23 = call i64 @DEBUG(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = call i32 @Hash_DeleteEntry(i32* %33, %struct.TYPE_7__* %34)
  br label %36

36:                                               ; preds = %31, %12
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %2, align 8
  br label %9

38:                                               ; preds = %9
  ret void
}

declare dso_local %struct.TYPE_8__* @get_cached_realpaths(...) #1

declare dso_local %struct.TYPE_7__* @Hash_EnumFirst(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @Hash_EnumNext(i32*) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @Hash_DeleteEntry(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
