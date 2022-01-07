; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_0fae.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_0fae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@modrm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@obuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sfence\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mfence\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"lfence\00", align 1
@prefixes = common dso_local global i32 0, align 4
@PREFIX_REPZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"rdfsbase\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rdgsbase\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"wrfsbase\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"wrgsbase\00", align 1
@used_prefixes = common dso_local global i32 0, align 4
@dq_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_0fae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_0fae(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 8
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %130

7:                                                ; preds = %2
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %9 = icmp sge i32 %8, 5
  br i1 %9, label %10, label %58

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %12 = icmp sle i32 %11, 7
  br i1 %12, label %13, label %58

13:                                               ; preds = %10
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 2), align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* @obuf, align 4
  %21 = load i32, i32* @obuf, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = add nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 8
  %26 = add i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @strcpy(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %57

29:                                               ; preds = %16
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* @obuf, align 4
  %34 = load i32, i32* @obuf, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 9
  %39 = add i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 @strcpy(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %56

42:                                               ; preds = %29
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* @obuf, align 4
  %47 = load i32, i32* @obuf, align 4
  %48 = call i32 @strlen(i32 %47)
  %49 = add nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 7
  %52 = add i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i32 @strcpy(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %45, %42
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %19
  store i32 0, i32* %3, align 4
  br label %129

58:                                               ; preds = %13, %10, %7
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %60 = icmp sle i32 %59, 3
  br i1 %60, label %61, label %126

61:                                               ; preds = %58
  %62 = load i32, i32* @prefixes, align 4
  %63 = load i32, i32* @PREFIX_REPZ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %126

66:                                               ; preds = %61
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* @obuf, align 4
  %71 = load i32, i32* @obuf, align 4
  %72 = call i32 @strlen(i32 %71)
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 7
  %76 = add i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i32 @strcpy(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %121

79:                                               ; preds = %66
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* @obuf, align 4
  %84 = load i32, i32* @obuf, align 4
  %85 = call i32 @strlen(i32 %84)
  %86 = add nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = sub i64 %87, 8
  %89 = add i64 %88, 1
  %90 = trunc i64 %89 to i32
  %91 = call i32 @strcpy(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %120

92:                                               ; preds = %79
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* @obuf, align 4
  %97 = load i32, i32* @obuf, align 4
  %98 = call i32 @strlen(i32 %97)
  %99 = add nsw i32 %96, %98
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, 8
  %102 = add i64 %101, 1
  %103 = trunc i64 %102 to i32
  %104 = call i32 @strcpy(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %119

105:                                              ; preds = %92
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* @obuf, align 4
  %110 = load i32, i32* @obuf, align 4
  %111 = call i32 @strlen(i32 %110)
  %112 = add nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = sub i64 %113, 8
  %115 = add i64 %114, 1
  %116 = trunc i64 %115 to i32
  %117 = call i32 @strcpy(i32 %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %108, %105
  br label %119

119:                                              ; preds = %118, %95
  br label %120

120:                                              ; preds = %119, %82
  br label %121

121:                                              ; preds = %120, %69
  %122 = load i32, i32* @PREFIX_REPZ, align 4
  %123 = load i32, i32* @used_prefixes, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* @used_prefixes, align 4
  %125 = load i32, i32* @dq_mode, align 4
  store i32 %125, i32* %3, align 4
  br label %128

126:                                              ; preds = %61, %58
  %127 = call i32 (...) @BadOp()
  br label %134

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %57
  br label %130

130:                                              ; preds = %129, %2
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @OP_E(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %126
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @BadOp(...) #1

declare dso_local i32 @OP_E(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
