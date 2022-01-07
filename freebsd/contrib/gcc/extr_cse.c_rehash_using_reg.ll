; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_rehash_using_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_rehash_using_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { %struct.table_elt*, %struct.table_elt*, i32, i32 }

@SUBREG = common dso_local global i64 0, align 8
@HASH_SIZE = common dso_local global i32 0, align 4
@table = common dso_local global %struct.table_elt** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rehash_using_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash_using_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_elt*, align 8
  %5 = alloca %struct.table_elt*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @SUBREG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @SUBREG_REG(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @REG_P(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @REGNO(i32 %19)
  %21 = call i64 @REG_IN_TABLE(i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @REGNO(i32 %24)
  %26 = call i64 @REG_IN_TABLE(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @REGNO(i32 %27)
  %29 = call i64 @REG_TICK(i32 %28)
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %18, %14
  br label %146

32:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %143, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @HASH_SIZE, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %146

37:                                               ; preds = %33
  %38 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %38, i64 %40
  %42 = load %struct.table_elt*, %struct.table_elt** %41, align 8
  store %struct.table_elt* %42, %struct.table_elt** %4, align 8
  br label %43

43:                                               ; preds = %140, %37
  %44 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %45 = icmp ne %struct.table_elt* %44, null
  br i1 %45, label %46, label %142

46:                                               ; preds = %43
  %47 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %48 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %47, i32 0, i32 1
  %49 = load %struct.table_elt*, %struct.table_elt** %48, align 8
  store %struct.table_elt* %49, %struct.table_elt** %5, align 8
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %52 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @reg_mentioned_p(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %46
  %57 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %58 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %61 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @exp_equiv_p(i32 %59, i32 %62, i32 1, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %139

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %68 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %71 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @SAFE_HASH(i32 %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = icmp ne i32 %66, %73
  br i1 %74, label %75, label %139

75:                                               ; preds = %65
  %76 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %77 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %76, i32 0, i32 1
  %78 = load %struct.table_elt*, %struct.table_elt** %77, align 8
  %79 = icmp ne %struct.table_elt* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %82 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %81, i32 0, i32 0
  %83 = load %struct.table_elt*, %struct.table_elt** %82, align 8
  %84 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %85 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %84, i32 0, i32 1
  %86 = load %struct.table_elt*, %struct.table_elt** %85, align 8
  %87 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %86, i32 0, i32 0
  store %struct.table_elt* %83, %struct.table_elt** %87, align 8
  br label %88

88:                                               ; preds = %80, %75
  %89 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %90 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %89, i32 0, i32 0
  %91 = load %struct.table_elt*, %struct.table_elt** %90, align 8
  %92 = icmp ne %struct.table_elt* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %95 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %94, i32 0, i32 1
  %96 = load %struct.table_elt*, %struct.table_elt** %95, align 8
  %97 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %98 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %97, i32 0, i32 0
  %99 = load %struct.table_elt*, %struct.table_elt** %98, align 8
  %100 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %99, i32 0, i32 1
  store %struct.table_elt* %96, %struct.table_elt** %100, align 8
  br label %109

101:                                              ; preds = %88
  %102 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %103 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %102, i32 0, i32 1
  %104 = load %struct.table_elt*, %struct.table_elt** %103, align 8
  %105 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %106 = load i32, i32* %3, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %105, i64 %107
  store %struct.table_elt* %104, %struct.table_elt** %108, align 8
  br label %109

109:                                              ; preds = %101, %93
  %110 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %110, i64 %112
  %114 = load %struct.table_elt*, %struct.table_elt** %113, align 8
  %115 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %116 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %115, i32 0, i32 1
  store %struct.table_elt* %114, %struct.table_elt** %116, align 8
  %117 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %118 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %117, i32 0, i32 0
  store %struct.table_elt* null, %struct.table_elt** %118, align 8
  %119 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %119, i64 %121
  %123 = load %struct.table_elt*, %struct.table_elt** %122, align 8
  %124 = icmp ne %struct.table_elt* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %109
  %126 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %127 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %128 = load i32, i32* %6, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %127, i64 %129
  %131 = load %struct.table_elt*, %struct.table_elt** %130, align 8
  %132 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %131, i32 0, i32 0
  store %struct.table_elt* %126, %struct.table_elt** %132, align 8
  br label %133

133:                                              ; preds = %125, %109
  %134 = load %struct.table_elt*, %struct.table_elt** %4, align 8
  %135 = load %struct.table_elt**, %struct.table_elt*** @table, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.table_elt*, %struct.table_elt** %135, i64 %137
  store %struct.table_elt* %134, %struct.table_elt** %138, align 8
  br label %139

139:                                              ; preds = %133, %65, %56, %46
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.table_elt*, %struct.table_elt** %5, align 8
  store %struct.table_elt* %141, %struct.table_elt** %4, align 8
  br label %43

142:                                              ; preds = %43
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %3, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %33

146:                                              ; preds = %31, %33
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i64 @REG_IN_TABLE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @REG_TICK(i32) #1

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i64 @exp_equiv_p(i32, i32, i32, i32) #1

declare dso_local i32 @SAFE_HASH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
