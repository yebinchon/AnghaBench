; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c___vcc_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c___vcc_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hlist_head = type { i32 }

@SEQ_START_TOKEN = common dso_local global %struct.sock* null, align 8
@VCC_HTABLE_SIZE = common dso_local global i32 0, align 4
@vcc_hash = common dso_local global %struct.hlist_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock**, i32, i32*, i64)* @__vcc_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vcc_walk(%struct.sock** %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.sock**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.hlist_head*, align 8
  store %struct.sock** %0, %struct.sock*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.sock**, %struct.sock*** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %9, align 8
  %13 = load %struct.sock*, %struct.sock** %9, align 8
  %14 = load %struct.sock*, %struct.sock** @SEQ_START_TOKEN, align 8
  %15 = icmp eq %struct.sock* %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %42, %16
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VCC_HTABLE_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.hlist_head*, %struct.hlist_head** @vcc_hash, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %24, i64 %27
  store %struct.hlist_head* %28, %struct.hlist_head** %10, align 8
  %29 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %30 = call i64 @hlist_empty(%struct.hlist_head* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %36

33:                                               ; preds = %23
  %34 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %35 = call %struct.sock* @__sk_head(%struct.hlist_head* %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi %struct.sock* [ null, %32 ], [ %35, %33 ]
  store %struct.sock* %37, %struct.sock** %9, align 8
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = icmp ne %struct.sock* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %18

46:                                               ; preds = %40, %18
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %46, %4
  br label %50

50:                                               ; preds = %76, %49
  br label %51

51:                                               ; preds = %64, %50
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = icmp ne %struct.sock* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.sock*, %struct.sock** %9, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @compare_family(%struct.sock* %55, i32 %56)
  %58 = load i64, i64* %8, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %85

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.sock*, %struct.sock** %9, align 8
  %66 = call %struct.sock* @sk_next(%struct.sock* %65)
  store %struct.sock* %66, %struct.sock** %9, align 8
  br label %51

67:                                               ; preds = %51
  %68 = load %struct.sock*, %struct.sock** %9, align 8
  %69 = icmp ne %struct.sock* %68, null
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @VCC_HTABLE_SIZE, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.hlist_head*, %struct.hlist_head** @vcc_hash, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %77, i64 %80
  %82 = call %struct.sock* @sk_head(%struct.hlist_head* %81)
  store %struct.sock* %82, %struct.sock** %9, align 8
  br label %50

83:                                               ; preds = %70, %67
  %84 = load %struct.sock*, %struct.sock** @SEQ_START_TOKEN, align 8
  store %struct.sock* %84, %struct.sock** %9, align 8
  br label %85

85:                                               ; preds = %83, %62
  %86 = load %struct.sock*, %struct.sock** %9, align 8
  %87 = load %struct.sock**, %struct.sock*** %5, align 8
  store %struct.sock* %86, %struct.sock** %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  ret i32 %90
}

declare dso_local i64 @hlist_empty(%struct.hlist_head*) #1

declare dso_local %struct.sock* @__sk_head(%struct.hlist_head*) #1

declare dso_local i64 @compare_family(%struct.sock*, i32) #1

declare dso_local %struct.sock* @sk_next(%struct.sock*) #1

declare dso_local %struct.sock* @sk_head(%struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
