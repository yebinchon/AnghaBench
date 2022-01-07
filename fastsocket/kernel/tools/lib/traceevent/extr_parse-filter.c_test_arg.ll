; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_arg = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.filter_arg*, i32, %struct.filter_arg* }
%struct.TYPE_7__ = type { %struct.filter_arg*, %struct.filter_arg* }
%struct.TYPE_6__ = type { %struct.filter_arg*, %struct.filter_arg* }
%struct.TYPE_5__ = type { i32 }

@FILTER_OP_NOT = common dso_local global i32 0, align 4
@FILTER_OP_OR = common dso_local global i32 0, align 4
@FILTER_OP_AND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad arg in filter tree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_arg(%struct.filter_arg* %0, %struct.filter_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filter_arg*, align 8
  %5 = alloca %struct.filter_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.filter_arg* %0, %struct.filter_arg** %4, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %5, align 8
  %8 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %9 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %193 [
    i32 137, label %11
    i32 132, label %17
    i32 131, label %17
    i32 135, label %17
    i32 136, label %18
    i32 134, label %41
    i32 133, label %64
  ]

11:                                               ; preds = %2
  %12 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %13 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 130, %15
  store i32 %16, i32* %3, align 4
  br label %196

17:                                               ; preds = %2, %2, %2
  store i32 129, i32* %3, align 4
  br label %196

18:                                               ; preds = %2
  %19 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %20 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %21 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.filter_arg*, %struct.filter_arg** %22, align 8
  %24 = call i32 @test_arg(%struct.filter_arg* %19, %struct.filter_arg* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 129
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %196

29:                                               ; preds = %18
  %30 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %31 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %32 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.filter_arg*, %struct.filter_arg** %33, align 8
  %35 = call i32 @test_arg(%struct.filter_arg* %30, %struct.filter_arg* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 129
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %196

40:                                               ; preds = %29
  store i32 129, i32* %3, align 4
  br label %196

41:                                               ; preds = %2
  %42 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %43 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %44 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.filter_arg*, %struct.filter_arg** %45, align 8
  %47 = call i32 @test_arg(%struct.filter_arg* %42, %struct.filter_arg* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 129
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %196

52:                                               ; preds = %41
  %53 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %54 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %55 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.filter_arg*, %struct.filter_arg** %56, align 8
  %58 = call i32 @test_arg(%struct.filter_arg* %53, %struct.filter_arg* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 129
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %196

63:                                               ; preds = %52
  store i32 129, i32* %3, align 4
  br label %196

64:                                               ; preds = %2
  %65 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %66 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FILTER_OP_NOT, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %135

71:                                               ; preds = %64
  %72 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %73 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %74 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.filter_arg*, %struct.filter_arg** %75, align 8
  %77 = call i32 @test_arg(%struct.filter_arg* %72, %struct.filter_arg* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %134 [
    i32 129, label %79
    i32 128, label %80
    i32 130, label %107
  ]

79:                                               ; preds = %71
  br label %134

80:                                               ; preds = %71
  %81 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %82 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FILTER_OP_OR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 128, i32* %3, align 4
  br label %196

88:                                               ; preds = %80
  %89 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %90 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %91 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load %struct.filter_arg*, %struct.filter_arg** %92, align 8
  %94 = call i32 @test_arg(%struct.filter_arg* %89, %struct.filter_arg* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 129
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %196

99:                                               ; preds = %88
  %100 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %101 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %102 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %103 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load %struct.filter_arg*, %struct.filter_arg** %104, align 8
  %106 = call i32 @reparent_op_arg(%struct.filter_arg* %100, %struct.filter_arg* %101, %struct.filter_arg* %105)
  store i32 129, i32* %3, align 4
  br label %196

107:                                              ; preds = %71
  %108 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %109 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FILTER_OP_AND, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 130, i32* %3, align 4
  br label %196

115:                                              ; preds = %107
  %116 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %117 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %118 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load %struct.filter_arg*, %struct.filter_arg** %119, align 8
  %121 = call i32 @test_arg(%struct.filter_arg* %116, %struct.filter_arg* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 129
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %196

126:                                              ; preds = %115
  %127 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %128 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %129 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %130 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load %struct.filter_arg*, %struct.filter_arg** %131, align 8
  %133 = call i32 @reparent_op_arg(%struct.filter_arg* %127, %struct.filter_arg* %128, %struct.filter_arg* %132)
  store i32 129, i32* %3, align 4
  br label %196

134:                                              ; preds = %71, %79
  br label %135

135:                                              ; preds = %134, %64
  %136 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %137 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %138 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load %struct.filter_arg*, %struct.filter_arg** %139, align 8
  %141 = call i32 @test_arg(%struct.filter_arg* %136, %struct.filter_arg* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  switch i32 %142, label %192 [
    i32 129, label %143
    i32 128, label %144
    i32 130, label %168
  ]

143:                                              ; preds = %135
  br label %192

144:                                              ; preds = %135
  %145 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %146 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @FILTER_OP_OR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i32 128, i32* %3, align 4
  br label %196

152:                                              ; preds = %144
  %153 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %154 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FILTER_OP_NOT, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i32 130, i32* %3, align 4
  br label %196

160:                                              ; preds = %152
  %161 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %162 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %163 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %164 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load %struct.filter_arg*, %struct.filter_arg** %165, align 8
  %167 = call i32 @reparent_op_arg(%struct.filter_arg* %161, %struct.filter_arg* %162, %struct.filter_arg* %166)
  store i32 129, i32* %3, align 4
  br label %196

168:                                              ; preds = %135
  %169 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %170 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @FILTER_OP_AND, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 130, i32* %3, align 4
  br label %196

176:                                              ; preds = %168
  %177 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %178 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @FILTER_OP_NOT, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 128, i32* %3, align 4
  br label %196

184:                                              ; preds = %176
  %185 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %186 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %187 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %188 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load %struct.filter_arg*, %struct.filter_arg** %189, align 8
  %191 = call i32 @reparent_op_arg(%struct.filter_arg* %185, %struct.filter_arg* %186, %struct.filter_arg* %190)
  store i32 129, i32* %3, align 4
  br label %196

192:                                              ; preds = %135, %143
  store i32 129, i32* %3, align 4
  br label %196

193:                                              ; preds = %2
  %194 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193
  store i32 129, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %192, %184, %183, %175, %160, %159, %151, %126, %124, %114, %99, %97, %87, %63, %61, %50, %40, %38, %27, %17, %11
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @reparent_op_arg(%struct.filter_arg*, %struct.filter_arg*, %struct.filter_arg*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
