; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_collect_one_action_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_collect_one_action_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eh_region = type { i32, %struct.eh_region*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, %struct.eh_region* }
%struct.TYPE_5__ = type { %struct.eh_region* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.eh_region*)* @collect_one_action_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_one_action_chain(i32 %0, %struct.eh_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.eh_region*, align 8
  %6 = alloca %struct.eh_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.eh_region* %1, %struct.eh_region** %5, align 8
  %11 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %12 = icmp eq %struct.eh_region* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %161

14:                                               ; preds = %2
  %15 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %16 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %159 [
    i32 131, label %18
    i32 128, label %50
    i32 133, label %127
    i32 130, label %152
    i32 132, label %153
    i32 129, label %153
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %21 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %20, i32 0, i32 1
  %22 = load %struct.eh_region*, %struct.eh_region** %21, align 8
  %23 = call i32 @collect_one_action_chain(i32 %19, %struct.eh_region* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %161

27:                                               ; preds = %18
  %28 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %29 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %28, i32 0, i32 1
  %30 = load %struct.eh_region*, %struct.eh_region** %29, align 8
  store %struct.eh_region* %30, %struct.eh_region** %6, align 8
  br label %31

31:                                               ; preds = %42, %27
  %32 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %33 = icmp ne %struct.eh_region* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %36 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 131
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %161

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %44 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %43, i32 0, i32 1
  %45 = load %struct.eh_region*, %struct.eh_region** %44, align 8
  store %struct.eh_region* %45, %struct.eh_region** %6, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @add_action_record(i32 %47, i32 0, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %161

50:                                               ; preds = %14
  store i32 -3, i32* %7, align 4
  %51 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %52 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.eh_region*, %struct.eh_region** %54, align 8
  store %struct.eh_region* %55, %struct.eh_region** %6, align 8
  br label %56

56:                                               ; preds = %119, %50
  %57 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %58 = icmp ne %struct.eh_region* %57, null
  br i1 %58, label %59, label %125

59:                                               ; preds = %56
  %60 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %61 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %59
  %67 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %68 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @TREE_VALUE(i32 %71)
  %73 = call i32 @TREE_INT_CST_LOW(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @add_action_record(i32 %74, i32 %75, i32 0)
  store i32 %76, i32* %7, align 4
  br label %118

77:                                               ; preds = %59
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, -3
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %83 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %82, i32 0, i32 1
  %84 = load %struct.eh_region*, %struct.eh_region** %83, align 8
  %85 = call i32 @collect_one_action_chain(i32 %81, %struct.eh_region* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %96

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @add_action_record(i32 %93, i32 0, i32 0)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %88
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %99 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %114, %97
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @TREE_VALUE(i32 %107)
  %109 = call i32 @TREE_INT_CST_LOW(i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @add_action_record(i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @TREE_CHAIN(i32 %115)
  store i32 %116, i32* %9, align 4
  br label %103

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %66
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %121 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load %struct.eh_region*, %struct.eh_region** %123, align 8
  store %struct.eh_region* %124, %struct.eh_region** %6, align 8
  br label %56

125:                                              ; preds = %56
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %161

127:                                              ; preds = %14
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %130 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %129, i32 0, i32 1
  %131 = load %struct.eh_region*, %struct.eh_region** %130, align 8
  %132 = call i32 @collect_one_action_chain(i32 %128, %struct.eh_region* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %143

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @add_action_record(i32 %140, i32 0, i32 0)
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %135
  %144 = load i32, i32* %4, align 4
  %145 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %146 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @add_action_record(i32 %144, i32 %149, i32 %150)
  store i32 %151, i32* %3, align 4
  br label %161

152:                                              ; preds = %14
  store i32 -2, i32* %3, align 4
  br label %161

153:                                              ; preds = %14, %14
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %156 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %155, i32 0, i32 1
  %157 = load %struct.eh_region*, %struct.eh_region** %156, align 8
  %158 = call i32 @collect_one_action_chain(i32 %154, %struct.eh_region* %157)
  store i32 %158, i32* %3, align 4
  br label %161

159:                                              ; preds = %14
  %160 = call i32 (...) @gcc_unreachable()
  br label %161

161:                                              ; preds = %13, %26, %39, %46, %125, %143, %152, %153, %159
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @add_action_record(i32, i32, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
