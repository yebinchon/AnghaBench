; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_find_next_line_in_linetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_find_next_line_in_linetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linetable = type { i32, %struct.linetable_entry* }
%struct.linetable_entry = type { i64, i32 }
%struct.symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linetable*, i32, i32, i32)* @find_next_line_in_linetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_line_in_linetable(%struct.linetable* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.linetable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.linetable_entry*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.symbol*, align 8
  store %struct.linetable* %0, %struct.linetable** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load %struct.linetable*, %struct.linetable** %6, align 8
  %24 = icmp eq %struct.linetable* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.linetable*, %struct.linetable** %6, align 8
  %28 = getelementptr inbounds %struct.linetable, %struct.linetable* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22, %4
  store i32 -1, i32* %5, align 4
  br label %154

32:                                               ; preds = %25
  %33 = load %struct.linetable*, %struct.linetable** %6, align 8
  %34 = getelementptr inbounds %struct.linetable, %struct.linetable* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %32
  %39 = load %struct.linetable*, %struct.linetable** %6, align 8
  %40 = getelementptr inbounds %struct.linetable, %struct.linetable* %39, i32 0, i32 1
  %41 = load %struct.linetable_entry*, %struct.linetable_entry** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %41, i64 %43
  %45 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @find_pc_partial_function(i64 %46, i8** null, i64* %12, i64* %13)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.linetable*, %struct.linetable** %6, align 8
  %56 = getelementptr inbounds %struct.linetable, %struct.linetable* %55, i32 0, i32 1
  %57 = load %struct.linetable_entry*, %struct.linetable_entry** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %57, i64 %59
  %61 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp slt i64 %62, %63
  br label %65

65:                                               ; preds = %54, %50
  %66 = phi i1 [ false, %50 ], [ %64, %54 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %50

70:                                               ; preds = %65
  br label %74

71:                                               ; preds = %38
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %70
  br label %76

75:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %150, %76
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %153

82:                                               ; preds = %78
  %83 = load %struct.linetable*, %struct.linetable** %6, align 8
  %84 = getelementptr inbounds %struct.linetable, %struct.linetable* %83, i32 0, i32 1
  %85 = load %struct.linetable_entry*, %struct.linetable_entry** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %85, i64 %87
  store %struct.linetable_entry* %88, %struct.linetable_entry** %15, align 8
  %89 = load %struct.linetable_entry*, %struct.linetable_entry** %15, align 8
  %90 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %150

94:                                               ; preds = %82
  store i8* null, i8** %16, align 8
  %95 = load %struct.linetable_entry*, %struct.linetable_entry** %15, align 8
  %96 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @find_pc_partial_function(i64 %97, i8** %16, i64* %17, i64* %18)
  %99 = load i8*, i8** %16, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %149

101:                                              ; preds = %94
  %102 = load %struct.linetable_entry*, %struct.linetable_entry** %15, align 8
  %103 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %18, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %149

107:                                              ; preds = %101
  %108 = load %struct.linetable_entry*, %struct.linetable_entry** %15, align 8
  %109 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %148

113:                                              ; preds = %107
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* @VAR_DOMAIN, align 4
  %116 = call %struct.symbol* @standard_lookup(i8* %114, i32 %115)
  store %struct.symbol* %116, %struct.symbol** %19, align 8
  %117 = load %struct.symbol*, %struct.symbol** %19, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @is_plausible_func_for_line(%struct.symbol* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %5, align 4
  br label %154

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load %struct.linetable*, %struct.linetable** %6, align 8
  %131 = getelementptr inbounds %struct.linetable, %struct.linetable* %130, i32 0, i32 1
  %132 = load %struct.linetable_entry*, %struct.linetable_entry** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %132, i64 %135
  %137 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %18, align 8
  %140 = icmp slt i64 %138, %139
  br label %141

141:                                              ; preds = %129, %124
  %142 = phi i1 [ false, %124 ], [ %140, %129 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %124

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147, %107
  br label %149

149:                                              ; preds = %148, %101, %94
  br label %150

150:                                              ; preds = %149, %82
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %78

153:                                              ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %121, %31
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @find_pc_partial_function(i64, i8**, i64*, i64*) #1

declare dso_local %struct.symbol* @standard_lookup(i8*, i32) #1

declare dso_local i64 @is_plausible_func_for_line(%struct.symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
