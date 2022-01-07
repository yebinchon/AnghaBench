; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_update_eliminables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_update_eliminables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i64, i32, i64, i64 }

@frame_pointer_needed = common dso_local global i32 0, align 4
@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@FRAME_POINTER_REQUIRED = common dso_local global i64 0, align 8
@FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@num_eliminable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @update_eliminables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_eliminables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.elim_table*, align 8
  %5 = alloca %struct.elim_table*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @frame_pointer_needed, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %8, %struct.elim_table** %4, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %11 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %12 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %13 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %11, i64 %12
  %14 = icmp ult %struct.elim_table* %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %17 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i64, i64* @FRAME_POINTER_REQUIRED, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %26 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %21, %15
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %30 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %29, i32 1
  store %struct.elim_table* %30, %struct.elim_table** %4, align 8
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %32, %struct.elim_table** %4, align 8
  br label %33

33:                                               ; preds = %110, %31
  %34 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %35 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %36 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %37 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %35, i64 %36
  %38 = icmp ult %struct.elim_table* %34, %37
  br i1 %38, label %39, label %113

39:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  %40 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %41 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %109, label %44

44:                                               ; preds = %39
  %45 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %46 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %109

49:                                               ; preds = %44
  %50 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %50, %struct.elim_table** %5, align 8
  br label %51

51:                                               ; preds = %75, %49
  %52 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %53 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %54 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %55 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %53, i64 %54
  %56 = icmp ult %struct.elim_table* %52, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %51
  %58 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %59 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %62 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %67 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %72 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %6, align 4
  br label %78

74:                                               ; preds = %65, %57
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %77 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %76, i32 1
  store %struct.elim_table* %77, %struct.elim_table** %5, align 8
  br label %51

78:                                               ; preds = %70, %51
  %79 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %79, %struct.elim_table** %5, align 8
  br label %80

80:                                               ; preds = %105, %78
  %81 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %82 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %83 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %84 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %82, i64 %83
  %85 = icmp ult %struct.elim_table* %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %88 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %86
  %94 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %95 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %98 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %103 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %93, %86
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %107 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %106, i32 1
  store %struct.elim_table* %107, %struct.elim_table** %5, align 8
  br label %80

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %108, %44, %39
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %112 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %111, i32 1
  store %struct.elim_table* %112, %struct.elim_table** %4, align 8
  br label %33

113:                                              ; preds = %33
  store i32 1, i32* @frame_pointer_needed, align 4
  %114 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %114, %struct.elim_table** %4, align 8
  br label %115

115:                                              ; preds = %162, %113
  %116 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %117 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  %118 = load i64, i64* @NUM_ELIMINABLE_REGS, align 8
  %119 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %117, i64 %118
  %120 = icmp ult %struct.elim_table* %116, %119
  br i1 %120, label %121, label %165

121:                                              ; preds = %115
  %122 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %123 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %128 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @FRAME_POINTER_REGNUM, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %134 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 0, i32* @frame_pointer_needed, align 4
  br label %140

140:                                              ; preds = %139, %132, %126, %121
  %141 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %142 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %140
  %146 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %147 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %152 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %151, i32 0, i32 2
  store i64 0, i64* %152, align 8
  %153 = load i32*, i32** %2, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %156 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @SET_HARD_REG_BIT(i32 %154, i64 %157)
  %159 = load i32, i32* @num_eliminable, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* @num_eliminable, align 4
  br label %161

161:                                              ; preds = %150, %145, %140
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.elim_table*, %struct.elim_table** %4, align 8
  %164 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %163, i32 1
  store %struct.elim_table* %164, %struct.elim_table** %4, align 8
  br label %115

165:                                              ; preds = %115
  %166 = load i32, i32* @frame_pointer_needed, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i32, i32* %3, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load i32*, i32** %2, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %175 = call i32 @SET_HARD_REG_BIT(i32 %173, i64 %174)
  br label %176

176:                                              ; preds = %171, %168, %165
  ret void
}

declare dso_local i32 @SET_HARD_REG_BIT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
