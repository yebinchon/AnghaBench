; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_unw_access_gr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_unw_access_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i64, i64, i64, %struct.unw_ireg* }
%struct.unw_ireg = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._Unwind_Context*, i32, i64*, i8*, i32)* @unw_access_gr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unw_access_gr(%struct._Unwind_Context* %0, i32 %1, i64* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct._Unwind_Context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.unw_ireg*, align 8
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64* null, i64** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub i32 %16, 1
  %18 = icmp uge i32 %17, 127
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = call i32 (...) @abort() #3
  unreachable

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64* %14, i64** %11, align 8
  store i64* %14, i64** %12, align 8
  store i64 0, i64* %14, align 8
  br label %134

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %109

28:                                               ; preds = %25
  %29 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %30 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %29, i32 0, i32 3
  %31 = load %struct.unw_ireg*, %struct.unw_ireg** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.unw_ireg, %struct.unw_ireg* %31, i64 %34
  store %struct.unw_ireg* %35, %struct.unw_ireg** %15, align 8
  %36 = load %struct.unw_ireg*, %struct.unw_ireg** %15, align 8
  %37 = getelementptr inbounds %struct.unw_ireg, %struct.unw_ireg* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %11, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %108

41:                                               ; preds = %28
  %42 = load i64*, i64** %11, align 8
  %43 = load %struct.unw_ireg*, %struct.unw_ireg** %15, align 8
  %44 = getelementptr inbounds %struct.unw_ireg, %struct.unw_ireg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %42, i64 %47
  store i64* %48, i64** %12, align 8
  %49 = load %struct.unw_ireg*, %struct.unw_ireg** %15, align 8
  %50 = getelementptr inbounds %struct.unw_ireg, %struct.unw_ireg* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %107 [
    i32 128, label %53
    i32 130, label %83
    i32 131, label %84
    i32 129, label %90
  ]

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i64*, i64** %11, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 0, i64* %62, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store i64 131070, i64* %64, align 8
  br label %168

65:                                               ; preds = %56
  %66 = load i64*, i64** %11, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  store i64 65598, i64* %67, align 8
  br label %82

68:                                               ; preds = %53
  %69 = load i64*, i64** %11, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 8190
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64*, i64** %8, align 8
  store i64 0, i64* %79, align 8
  %80 = load i8*, i8** %9, align 8
  store i8 1, i8* %80, align 1
  br label %168

81:                                               ; preds = %73, %68
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %41, %82
  store i64 0, i64* %14, align 8
  store i64* %14, i64** %12, align 8
  br label %107

84:                                               ; preds = %41
  %85 = load i64*, i64** %11, align 8
  %86 = ptrtoint i64* %85 to i64
  %87 = and i64 %86, 504
  %88 = sdiv i64 %87, 8
  %89 = shl i64 1, %88
  store i64 %89, i64* %13, align 8
  br label %107

90:                                               ; preds = %41
  %91 = load i64*, i64** %11, align 8
  %92 = ptrtoint i64* %91 to i64
  %93 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %94 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp uge i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %99 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %98, i32 0, i32 1
  store i64* %99, i64** %12, align 8
  br label %103

100:                                              ; preds = %90
  %101 = load i64*, i64** %11, align 8
  %102 = call i64* @ia64_rse_rnat_addr(i64* %101)
  store i64* %102, i64** %12, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i64*, i64** %11, align 8
  %105 = call i64 @ia64_rse_slot_num(i64* %104)
  %106 = shl i64 1, %105
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %41, %103, %84, %83
  br label %108

108:                                              ; preds = %107, %28
  br label %133

109:                                              ; preds = %25
  %110 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %111 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i64*
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 32
  %116 = call i64* @ia64_rse_skip_regs(i64* %113, i32 %115)
  store i64* %116, i64** %11, align 8
  %117 = load i64*, i64** %11, align 8
  %118 = ptrtoint i64* %117 to i64
  %119 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %120 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp uge i64 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %109
  %124 = load %struct._Unwind_Context*, %struct._Unwind_Context** %6, align 8
  %125 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %124, i32 0, i32 1
  store i64* %125, i64** %12, align 8
  br label %129

126:                                              ; preds = %109
  %127 = load i64*, i64** %11, align 8
  %128 = call i64* @ia64_rse_rnat_addr(i64* %127)
  store i64* %128, i64** %12, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i64*, i64** %11, align 8
  %131 = call i64 @ia64_rse_slot_num(i64* %130)
  %132 = shl i64 1, %131
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %129, %108
  br label %134

134:                                              ; preds = %133, %24
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %134
  %138 = load i64*, i64** %8, align 8
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %11, align 8
  store i64 %139, i64* %140, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i8, i8* %141, align 1
  %143 = icmp ne i8 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i64, i64* %13, align 8
  %146 = load i64*, i64** %12, align 8
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %147, %145
  store i64 %148, i64* %146, align 8
  br label %155

149:                                              ; preds = %137
  %150 = load i64, i64* %13, align 8
  %151 = xor i64 %150, -1
  %152 = load i64*, i64** %12, align 8
  %153 = load i64, i64* %152, align 8
  %154 = and i64 %153, %151
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %149, %144
  br label %168

156:                                              ; preds = %134
  %157 = load i64*, i64** %11, align 8
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %8, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i64*, i64** %12, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %13, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = trunc i32 %165 to i8
  %167 = load i8*, i8** %9, align 8
  store i8 %166, i8* %167, align 1
  br label %168

168:                                              ; preds = %60, %78, %156, %155
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64* @ia64_rse_rnat_addr(i64*) #2

declare dso_local i64 @ia64_rse_slot_num(i64*) #2

declare dso_local i64* @ia64_rse_skip_regs(i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
