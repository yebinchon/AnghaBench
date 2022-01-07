; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_undo.c_pop_undo_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_undo.c_pop_undo_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@current_addr = common dso_local global i64 0, align 8
@addr_last = common dso_local global i64 0, align 8
@u_current_addr = common dso_local global i32 0, align 4
@u_addr_last = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nothing to undo\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i32 0, align 4
@u_p = common dso_local global i64 0, align 8
@modified = common dso_local global i32 0, align 4
@ustack = common dso_local global %struct.TYPE_6__* null, align 8
@isglobal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop_undo_stack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @current_addr, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @addr_last, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @u_current_addr, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @u_addr_last, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** @errmsg, align 8
  %13 = load i32, i32* @ERR, align 4
  store i32 %13, i32* %1, align 4
  br label %161

14:                                               ; preds = %9
  %15 = load i64, i64* @u_p, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* @modified, align 4
  br label %18

18:                                               ; preds = %17, %14
  br label %19

19:                                               ; preds = %18
  %20 = call i32 @get_addressed_line_node(i32 0)
  %21 = call i32 (...) @SPL1()
  %22 = load i64, i64* @u_p, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %119, %19
  %24 = load i64, i64* %2, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %2, align 8
  %26 = icmp sgt i64 %24, 0
  br i1 %26, label %27, label %126

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %29 = load i64, i64* %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %118 [
    i32 131, label %33
    i32 130, label %49
    i32 129, label %76
    i32 128, label %76
  ]

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %42 = load i64, i64* %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 @REQUE(%struct.TYPE_7__* %40, %struct.TYPE_7__* %47)
  br label %119

49:                                               ; preds = %27
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %51 = load i64, i64* %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %58 = load i64, i64* %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call i32 @REQUE(%struct.TYPE_7__* %56, %struct.TYPE_7__* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %64 = load i64, i64* %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %69 = load i64, i64* %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = call i32 @REQUE(%struct.TYPE_7__* %67, %struct.TYPE_7__* %74)
  br label %119

76:                                               ; preds = %27, %27
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %78 = load i64, i64* %2, align 8
  %79 = sub nsw i64 %78, 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %84 = load i64, i64* %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call i32 @REQUE(%struct.TYPE_7__* %82, %struct.TYPE_7__* %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %92 = load i64, i64* %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %99 = load i64, i64* %2, align 8
  %100 = sub nsw i64 %99, 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = call i32 @REQUE(%struct.TYPE_7__* %97, %struct.TYPE_7__* %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %106 = load i64, i64* %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %111 = load i64, i64* %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = call i32 @REQUE(%struct.TYPE_7__* %109, %struct.TYPE_7__* %114)
  %116 = load i64, i64* %2, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %2, align 8
  br label %119

118:                                              ; preds = %27
  br label %119

119:                                              ; preds = %118, %76, %49, %33
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %121 = load i64, i64* %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = xor i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %23

126:                                              ; preds = %23
  %127 = load i64, i64* @u_p, align 8
  store i64 %127, i64* %2, align 8
  br label %128

128:                                              ; preds = %135, %126
  %129 = load i64, i64* %2, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %2, align 8
  %131 = load i64, i64* @u_p, align 8
  %132 = add nsw i64 %131, 1
  %133 = sdiv i64 %132, 2
  %134 = icmp sgt i64 %129, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %128
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %137 = load i64, i64* %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %140 = load i64, i64* @u_p, align 8
  %141 = sub nsw i64 %140, 1
  %142 = load i64, i64* %2, align 8
  %143 = sub nsw i64 %141, %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %143
  %145 = call i32 @USWAP(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %138, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %144)
  br label %128

146:                                              ; preds = %128
  %147 = load i64, i64* @isglobal, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 (...) @clear_active_list()
  br label %151

151:                                              ; preds = %149, %146
  %152 = load i32, i32* @u_current_addr, align 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* @current_addr, align 8
  %154 = load i64, i64* %3, align 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* @u_current_addr, align 4
  %156 = load i32, i32* @u_addr_last, align 4
  %157 = sext i32 %156 to i64
  store i64 %157, i64* @addr_last, align 8
  %158 = load i64, i64* %4, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* @u_addr_last, align 4
  %160 = call i32 (...) @SPL0()
  store i32 0, i32* %1, align 4
  br label %161

161:                                              ; preds = %151, %12
  %162 = load i32, i32* %1, align 4
  ret i32 %162
}

declare dso_local i32 @get_addressed_line_node(i32) #1

declare dso_local i32 @SPL1(...) #1

declare dso_local i32 @REQUE(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @USWAP(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @clear_active_list(...) #1

declare dso_local i32 @SPL0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
