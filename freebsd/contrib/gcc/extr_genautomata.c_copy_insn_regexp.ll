; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_copy_insn_regexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_copy_insn_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_21__*)* @copy_insn_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @copy_insn_regexp(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %153 [
    i32 130, label %8
    i32 128, label %16
    i32 131, label %19
    i32 129, label %30
    i32 134, label %70
    i32 132, label %110
    i32 133, label %150
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = call %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_21__* %9)
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %15 = call %struct.TYPE_21__* @copy_insn_regexp(%struct.TYPE_21__* %14)
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %3, align 8
  br label %155

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = call %struct.TYPE_21__* @copy_node(%struct.TYPE_21__* %17, i32 4)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %3, align 8
  br label %155

19:                                               ; preds = %1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %21 = call %struct.TYPE_21__* @copy_node(%struct.TYPE_21__* %20, i32 4)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %3, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = call %struct.TYPE_17__* @REGEXP_REPEAT(%struct.TYPE_21__* %22)
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = call %struct.TYPE_21__* @copy_insn_regexp(%struct.TYPE_21__* %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = call %struct.TYPE_17__* @REGEXP_REPEAT(%struct.TYPE_21__* %27)
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %29, align 8
  br label %155

30:                                               ; preds = %1
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %33 = call %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_21__* %32)
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = add i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call %struct.TYPE_21__* @copy_node(%struct.TYPE_21__* %31, i32 %40)
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %66, %30
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = call %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_21__* %44)
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %51 = call %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_21__* %50)
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %53, i64 %55
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = call %struct.TYPE_21__* @copy_insn_regexp(%struct.TYPE_21__* %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = call %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_21__* %59)
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %62, i64 %64
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %65, align 8
  br label %66

66:                                               ; preds = %49
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %42

69:                                               ; preds = %42
  br label %155

70:                                               ; preds = %1
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = call %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_21__* %72)
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = mul i64 8, %77
  %79 = add i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call %struct.TYPE_21__* @copy_node(%struct.TYPE_21__* %71, i32 %80)
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %106, %70
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %85 = call %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_21__* %84)
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %91 = call %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_21__* %90)
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %93, i64 %95
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = call %struct.TYPE_21__* @copy_insn_regexp(%struct.TYPE_21__* %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %100 = call %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_21__* %99)
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %102, i64 %104
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %105, align 8
  br label %106

106:                                              ; preds = %89
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %82

109:                                              ; preds = %82
  br label %155

110:                                              ; preds = %1
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %113 = call %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_21__* %112)
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul i64 8, %117
  %119 = add i64 4, %118
  %120 = trunc i64 %119 to i32
  %121 = call %struct.TYPE_21__* @copy_node(%struct.TYPE_21__* %111, i32 %120)
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %146, %110
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %125 = call %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_21__* %124)
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %122
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %131 = call %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_21__* %130)
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %133, i64 %135
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = call %struct.TYPE_21__* @copy_insn_regexp(%struct.TYPE_21__* %137)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = call %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_21__* %139)
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %142, i64 %144
  store %struct.TYPE_21__* %138, %struct.TYPE_21__** %145, align 8
  br label %146

146:                                              ; preds = %129
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %122

149:                                              ; preds = %122
  br label %155

150:                                              ; preds = %1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %152 = call %struct.TYPE_21__* @copy_node(%struct.TYPE_21__* %151, i32 4)
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %3, align 8
  br label %155

153:                                              ; preds = %1
  %154 = call i32 (...) @gcc_unreachable()
  br label %155

155:                                              ; preds = %153, %150, %149, %109, %69, %19, %16, %8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %156
}

declare dso_local %struct.TYPE_23__* @REGEXP_RESERV(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @copy_node(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_17__* @REGEXP_REPEAT(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @REGEXP_SEQUENCE(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_21__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
