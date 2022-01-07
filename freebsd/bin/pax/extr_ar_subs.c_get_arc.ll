; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_get_arc.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_get_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 (i8*, i32)* }

@BLKMULT = common dso_local global i32 0, align 4
@ford = common dso_local global i64* null, align 8
@fsub = common dso_local global %struct.TYPE_3__* null, align 8
@hdbuf = common dso_local global i8* null, align 8
@act = common dso_local global i64 0, align 8
@APPND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Cannot identify format. Searching...\00", align 1
@frmt = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Sorry, unable to determine archive format.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @BLKMULT, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %39, %0
  %10 = load i64*, i64** @ford, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %9
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fsub, align 8
  %18 = load i64*, i64** @ford, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %16
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fsub, align 8
  %30 = load i64*, i64** @ford, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %28, %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %9

42:                                               ; preds = %9
  %43 = call i64 (...) @rd_start()
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %1, align 4
  br label %159

46:                                               ; preds = %42
  %47 = load i32, i32* @BLKMULT, align 4
  store i32 %47, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %48 = load i8*, i8** @hdbuf, align 8
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %156, %46
  br label %50

50:                                               ; preds = %86, %49
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @rd_wrbuf(i8* %51, i32 %52)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %87

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = call i64 (...) @rd_sync()
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %65
  br label %157

72:                                               ; preds = %68
  %73 = load i32, i32* @BLKMULT, align 4
  store i32 %73, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %74 = load i8*, i8** @hdbuf, align 8
  store i8* %74, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i64, i64* @act, align 8
  %79 = load i64, i64* @APPND, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, i32* %1, align 4
  br label %159

82:                                               ; preds = %77
  %83 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %72
  br label %50

87:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %121, %87
  %89 = load i64*, i64** @ford, align 8
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp uge i64 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %88
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fsub, align 8
  %97 = load i64*, i64** @ford, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64 (i8*, i32)*, i64 (i8*, i32)** %103, align 8
  %105 = load i8*, i8** @hdbuf, align 8
  %106 = load i32, i32* %3, align 4
  %107 = call i64 %104(i8* %105, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %121

110:                                              ; preds = %95
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fsub, align 8
  %112 = load i64*, i64** @ford, align 8
  %113 = load i32, i32* %2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %116
  store %struct.TYPE_3__* %117, %struct.TYPE_3__** @frmt, align 8
  %118 = load i8*, i8** @hdbuf, align 8
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @pback(i8* %118, i32 %119)
  store i32 0, i32* %1, align 4
  br label %159

121:                                              ; preds = %109
  %122 = load i32, i32* %2, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %2, align 4
  br label %88

124:                                              ; preds = %88
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %124
  %128 = load i64, i64* @act, align 8
  %129 = load i64, i64* @APPND, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 -1, i32* %1, align 4
  br label %159

132:                                              ; preds = %127
  %133 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %132, %124
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %3, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i8*, i8** @hdbuf, align 8
  %142 = load i8*, i8** @hdbuf, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @memmove(i8* %141, i8* %143, i32 %144)
  %146 = load i32, i32* @BLKMULT, align 4
  %147 = load i32, i32* %3, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %4, align 4
  %149 = load i8*, i8** @hdbuf, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8* %152, i8** %6, align 8
  br label %156

153:                                              ; preds = %136
  %154 = load i32, i32* @BLKMULT, align 4
  store i32 %154, i32* %4, align 4
  %155 = load i8*, i8** @hdbuf, align 8
  store i8* %155, i8** %6, align 8
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %153, %140
  br label %49

157:                                              ; preds = %71
  %158 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %159

159:                                              ; preds = %157, %131, %110, %81, %45
  %160 = load i32, i32* %1, align 4
  ret i32 %160
}

declare dso_local i64 @rd_start(...) #1

declare dso_local i32 @rd_wrbuf(i8*, i32) #1

declare dso_local i64 @rd_sync(...) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @pback(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
