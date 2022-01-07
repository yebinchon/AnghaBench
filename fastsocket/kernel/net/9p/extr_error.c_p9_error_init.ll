; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_error.c_p9_error_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_error.c_p9_error_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.errormap = type { i32, i32, i32* }

@ERRHASHSZ = common dso_local global i32 0, align 4
@hash_errmap = common dso_local global i32* null, align 8
@errmap = common dso_local global %struct.errormap* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_error_init() #0 {
  %1 = alloca %struct.errormap*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ERRHASHSZ, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i32*, i32** @hash_errmap, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call i32 @INIT_HLIST_HEAD(i32* %11)
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %3

16:                                               ; preds = %3
  %17 = load %struct.errormap*, %struct.errormap** @errmap, align 8
  store %struct.errormap* %17, %struct.errormap** %1, align 8
  br label %18

18:                                               ; preds = %49, %16
  %19 = load %struct.errormap*, %struct.errormap** %1, align 8
  %20 = getelementptr inbounds %struct.errormap, %struct.errormap* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = load %struct.errormap*, %struct.errormap** %1, align 8
  %25 = getelementptr inbounds %struct.errormap, %struct.errormap* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @strlen(i32* %26)
  %28 = load %struct.errormap*, %struct.errormap** %1, align 8
  %29 = getelementptr inbounds %struct.errormap, %struct.errormap* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.errormap*, %struct.errormap** %1, align 8
  %31 = getelementptr inbounds %struct.errormap, %struct.errormap* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.errormap*, %struct.errormap** %1, align 8
  %34 = getelementptr inbounds %struct.errormap, %struct.errormap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @jhash(i32* %32, i32 %35, i32 0)
  %37 = load i32, i32* @ERRHASHSZ, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %2, align 4
  %39 = load %struct.errormap*, %struct.errormap** %1, align 8
  %40 = getelementptr inbounds %struct.errormap, %struct.errormap* %39, i32 0, i32 0
  %41 = call i32 @INIT_HLIST_NODE(i32* %40)
  %42 = load %struct.errormap*, %struct.errormap** %1, align 8
  %43 = getelementptr inbounds %struct.errormap, %struct.errormap* %42, i32 0, i32 0
  %44 = load i32*, i32** @hash_errmap, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @hlist_add_head(i32* %43, i32* %47)
  br label %49

49:                                               ; preds = %23
  %50 = load %struct.errormap*, %struct.errormap** %1, align 8
  %51 = getelementptr inbounds %struct.errormap, %struct.errormap* %50, i32 1
  store %struct.errormap* %51, %struct.errormap** %1, align 8
  br label %18

52:                                               ; preds = %18
  ret i32 1
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @jhash(i32*, i32, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
