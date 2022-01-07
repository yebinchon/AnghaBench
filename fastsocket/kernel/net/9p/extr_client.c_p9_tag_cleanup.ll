; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_tag_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_tag_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i64, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }

@P9_ROW_MAXTAG = common dso_local global i32 0, align 4
@REQ_STATUS_IDLE = common dso_local global i64 0, align 8
@P9_DEBUG_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Attempting to cleanup non-free tag %d,%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_client*)* @p9_tag_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_tag_cleanup(%struct.p9_client* %0) #0 {
  %2 = alloca %struct.p9_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %8 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @P9_ROW_MAXTAG, align 4
  %11 = sdiv i32 %9, %10
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @P9_ROW_MAXTAG, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %20 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REQ_STATUS_IDLE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load i32, i32* @P9_DEBUG_MUX, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @P9_DPRINTK(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %128

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %14

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5

46:                                               ; preds = %5
  %47 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %48 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %53 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @p9_idpool_destroy(i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %122, %56
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %60 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @P9_ROW_MAXTAG, align 4
  %63 = sdiv i32 %61, %62
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %110, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @P9_ROW_MAXTAG, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %66
  %71 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %72 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = call i32 @kfree(%struct.TYPE_2__* %82)
  %84 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %85 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %86, i64 %88
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = call i32 @kfree(%struct.TYPE_2__* %95)
  %97 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %98 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %99, i64 %101
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = call i32 @kfree(%struct.TYPE_2__* %108)
  br label %110

110:                                              ; preds = %70
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %66

113:                                              ; preds = %66
  %114 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %115 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %116, i64 %118
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = call i32 @kfree(%struct.TYPE_2__* %120)
  br label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %57

125:                                              ; preds = %57
  %126 = load %struct.p9_client*, %struct.p9_client** %2, align 8
  %127 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %33
  ret void
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, i32) #1

declare dso_local i32 @p9_idpool_destroy(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
