; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_dofloat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_dofloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i64 }
%struct.dis386 = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i64, i32 (i64, i32)* }

@codep = common dso_local global i32* null, align 8
@modrm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@float_mem = common dso_local global i32** null, align 8
@op_out = common dso_local global i32* null, align 8
@obufp = common dso_local global i32 0, align 4
@op_ad = common dso_local global i32 0, align 4
@float_mem_mode = common dso_local global i32* null, align 8
@MODRM_CHECK = common dso_local global i32 0, align 4
@float_reg = common dso_local global %struct.dis386** null, align 8
@fgrps = common dso_local global i32*** null, align 8
@names16 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dofloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dofloat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dis386*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32*, i32** @codep, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 -1
  %8 = load i32, i32* %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %4, align 1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modrm, i32 0, i32 0), align 8
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 %14, 216
  %16 = mul nsw i32 %15, 8
  %17 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modrm, i32 0, i32 1), align 4
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %16, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32**, i32*** @float_mem, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @putop(i32* %24, i32 %25)
  %27 = load i32*, i32** @op_out, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @obufp, align 4
  store i32 2, i32* @op_ad, align 4
  %30 = load i32*, i32** @float_mem_mode, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @OP_E(i32 %34, i32 %35)
  br label %145

37:                                               ; preds = %1
  %38 = load i32, i32* @MODRM_CHECK, align 4
  %39 = load i32*, i32** @codep, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** @codep, align 8
  %41 = load %struct.dis386**, %struct.dis386*** @float_reg, align 8
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 %43, 216
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dis386*, %struct.dis386** %41, i64 %45
  %47 = load %struct.dis386*, %struct.dis386** %46, align 8
  %48 = load i8, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modrm, i32 0, i32 1), align 4
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.dis386, %struct.dis386* %47, i64 %49
  store %struct.dis386* %50, %struct.dis386** %3, align 8
  %51 = load %struct.dis386*, %struct.dis386** %3, align 8
  %52 = getelementptr inbounds %struct.dis386, %struct.dis386* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %37
  %56 = load i32***, i32**** @fgrps, align 8
  %57 = load %struct.dis386*, %struct.dis386** %3, align 8
  %58 = getelementptr inbounds %struct.dis386, %struct.dis386* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32**, i32*** %56, i64 %62
  %64 = load i32**, i32*** %63, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modrm, i32 0, i32 2), align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @putop(i32* %67, i32 %68)
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 223
  br i1 %72, label %73, label %86

73:                                               ; preds = %55
  %74 = load i32*, i32** @codep, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 -1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 224
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load i32*, i32** @op_out, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** @names16, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @strcpy(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %78, %73, %55
  br label %145

87:                                               ; preds = %37
  %88 = load %struct.dis386*, %struct.dis386** %3, align 8
  %89 = getelementptr inbounds %struct.dis386, %struct.dis386* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @putop(i32* %90, i32 %91)
  %93 = load i32*, i32** @op_out, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* @obufp, align 4
  store i32 2, i32* @op_ad, align 4
  %96 = load %struct.dis386*, %struct.dis386** %3, align 8
  %97 = getelementptr inbounds %struct.dis386, %struct.dis386* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32 (i64, i32)*, i32 (i64, i32)** %100, align 8
  %102 = icmp ne i32 (i64, i32)* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %87
  %104 = load %struct.dis386*, %struct.dis386** %3, align 8
  %105 = getelementptr inbounds %struct.dis386, %struct.dis386* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32 (i64, i32)*, i32 (i64, i32)** %108, align 8
  %110 = load %struct.dis386*, %struct.dis386** %3, align 8
  %111 = getelementptr inbounds %struct.dis386, %struct.dis386* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %2, align 4
  %117 = call i32 %109(i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %103, %87
  %119 = load i32*, i32** @op_out, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* @obufp, align 4
  store i32 1, i32* @op_ad, align 4
  %122 = load %struct.dis386*, %struct.dis386** %3, align 8
  %123 = getelementptr inbounds %struct.dis386, %struct.dis386* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32 (i64, i32)*, i32 (i64, i32)** %126, align 8
  %128 = icmp ne i32 (i64, i32)* %127, null
  br i1 %128, label %129, label %144

129:                                              ; preds = %118
  %130 = load %struct.dis386*, %struct.dis386** %3, align 8
  %131 = getelementptr inbounds %struct.dis386, %struct.dis386* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32 (i64, i32)*, i32 (i64, i32)** %134, align 8
  %136 = load %struct.dis386*, %struct.dis386** %3, align 8
  %137 = getelementptr inbounds %struct.dis386, %struct.dis386* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %2, align 4
  %143 = call i32 %135(i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %129, %118
  br label %145

145:                                              ; preds = %12, %144, %86
  ret void
}

declare dso_local i32 @putop(i32*, i32) #1

declare dso_local i32 @OP_E(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
