; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_merge_accept_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_merge_accept_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision = type { %struct.decision_test* }
%struct.decision_test = type { i64, %struct.TYPE_4__, %struct.decision_test* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }

@DT_accept_insn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"`%s' matches `%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"previous definition of `%s'\00", align 1
@error_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision*, %struct.decision*)* @merge_accept_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_accept_insn(%struct.decision* %0, %struct.decision* %1) #0 {
  %3 = alloca %struct.decision*, align 8
  %4 = alloca %struct.decision*, align 8
  %5 = alloca %struct.decision_test*, align 8
  %6 = alloca %struct.decision_test*, align 8
  store %struct.decision* %0, %struct.decision** %3, align 8
  store %struct.decision* %1, %struct.decision** %4, align 8
  %7 = load %struct.decision*, %struct.decision** %3, align 8
  %8 = getelementptr inbounds %struct.decision, %struct.decision* %7, i32 0, i32 0
  %9 = load %struct.decision_test*, %struct.decision_test** %8, align 8
  store %struct.decision_test* %9, %struct.decision_test** %5, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %12 = icmp ne %struct.decision_test* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %15 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DT_accept_insn, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %23 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %22, i32 0, i32 2
  %24 = load %struct.decision_test*, %struct.decision_test** %23, align 8
  store %struct.decision_test* %24, %struct.decision_test** %5, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %27 = icmp eq %struct.decision_test* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %124

29:                                               ; preds = %25
  %30 = load %struct.decision*, %struct.decision** %4, align 8
  %31 = getelementptr inbounds %struct.decision, %struct.decision* %30, i32 0, i32 0
  %32 = load %struct.decision_test*, %struct.decision_test** %31, align 8
  store %struct.decision_test* %32, %struct.decision_test** %6, align 8
  br label %33

33:                                               ; preds = %44, %29
  %34 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %35 = icmp ne %struct.decision_test* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %38 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DT_accept_insn, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %46 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %45, i32 0, i32 2
  %47 = load %struct.decision_test*, %struct.decision_test** %46, align 8
  store %struct.decision_test* %47, %struct.decision_test** %6, align 8
  br label %33

48:                                               ; preds = %42, %33
  %49 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %50 = icmp eq %struct.decision_test* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %124

52:                                               ; preds = %48
  %53 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %54 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %61 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %124

67:                                               ; preds = %59, %52
  %68 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %69 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %76 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %83 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %86 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = bitcast %struct.TYPE_3__* %84 to i8*
  %89 = bitcast %struct.TYPE_3__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 16, i1 false)
  br label %123

90:                                               ; preds = %74, %67
  %91 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %92 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.decision_test*, %struct.decision_test** %6, align 8
  %97 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @get_insn_name(i32 %100)
  %102 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %103 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @get_insn_name(i32 %106)
  %108 = call i32 (i32, i8*, i32, ...) @message_with_line(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %107)
  %109 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %110 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.decision_test*, %struct.decision_test** %5, align 8
  %115 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @get_insn_name(i32 %118)
  %120 = call i32 (i32, i8*, i32, ...) @message_with_line(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @error_count, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @error_count, align 4
  br label %123

123:                                              ; preds = %90, %81
  br label %124

124:                                              ; preds = %28, %51, %123, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @message_with_line(i32, i8*, i32, ...) #2

declare dso_local i32 @get_insn_name(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
