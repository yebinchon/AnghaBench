; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_depend.c_register_dependency.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_depend.c_register_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dependency = type { %struct.dependency*, i32 }

@dep_file = common dso_local global i32* null, align 8
@dep_chain = common dso_local global %struct.dependency* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_dependency(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dependency*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32*, i32** @dep_file, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  %8 = load %struct.dependency*, %struct.dependency** @dep_chain, align 8
  store %struct.dependency* %8, %struct.dependency** %3, align 8
  br label %9

9:                                                ; preds = %21, %7
  %10 = load %struct.dependency*, %struct.dependency** %3, align 8
  %11 = icmp ne %struct.dependency* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.dependency*, %struct.dependency** %3, align 8
  %15 = getelementptr inbounds %struct.dependency, %struct.dependency* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strcmp(i8* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %36

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.dependency*, %struct.dependency** %3, align 8
  %23 = getelementptr inbounds %struct.dependency, %struct.dependency* %22, i32 0, i32 0
  %24 = load %struct.dependency*, %struct.dependency** %23, align 8
  store %struct.dependency* %24, %struct.dependency** %3, align 8
  br label %9

25:                                               ; preds = %9
  %26 = call i64 @xmalloc(i32 16)
  %27 = inttoptr i64 %26 to %struct.dependency*
  store %struct.dependency* %27, %struct.dependency** %3, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @xstrdup(i8* %28)
  %30 = load %struct.dependency*, %struct.dependency** %3, align 8
  %31 = getelementptr inbounds %struct.dependency, %struct.dependency* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dependency*, %struct.dependency** @dep_chain, align 8
  %33 = load %struct.dependency*, %struct.dependency** %3, align 8
  %34 = getelementptr inbounds %struct.dependency, %struct.dependency* %33, i32 0, i32 0
  store %struct.dependency* %32, %struct.dependency** %34, align 8
  %35 = load %struct.dependency*, %struct.dependency** %3, align 8
  store %struct.dependency* %35, %struct.dependency** @dep_chain, align 8
  br label %36

36:                                               ; preds = %25, %19, %6
  ret void
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
