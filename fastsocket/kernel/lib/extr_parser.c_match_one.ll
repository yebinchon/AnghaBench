; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_parser.c_match_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_parser.c_match_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_3__*)* @match_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_one(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %172

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %67, %163
  store i32 -1, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 37)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %172

26:                                               ; preds = %15
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i64 @strncmp(i8* %27, i8* %28, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %172

38:                                               ; preds = %26
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @simple_strtoul(i8* %53, i8** %6, i32 10)
  store i32 %54, i32* %10, align 4
  br label %71

55:                                               ; preds = %38
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 37
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %172

67:                                               ; preds = %60
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %15

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MAX_OPT_ARGS, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %172

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i8* %77, i8** %82, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  switch i32 %86, label %162 [
    i32 115, label %87
    i32 100, label %114
    i32 117, label %122
    i32 111, label %130
    i32 120, label %138
  ]

87:                                               ; preds = %76
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %172

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = icmp sgt i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95, %92
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @strlen(i8* %101)
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i8* %108, i8** %113, align 8
  br label %163

114:                                              ; preds = %76
  %115 = load i8*, i8** %5, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = call i32 @simple_strtol(i8* %115, i8** %120, i32 0)
  br label %146

122:                                              ; preds = %76
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = call i32 @simple_strtoul(i8* %123, i8** %128, i32 0)
  br label %146

130:                                              ; preds = %76
  %131 = load i8*, i8** %5, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = call i32 @simple_strtoul(i8* %131, i8** %136, i32 8)
  br label %146

138:                                              ; preds = %76
  %139 = load i8*, i8** %5, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = call i32 @simple_strtoul(i8* %139, i8** %144, i32 16)
  br label %146

146:                                              ; preds = %138, %130, %122, %114
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = icmp eq i8* %152, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %172

161:                                              ; preds = %146
  br label %163

162:                                              ; preds = %76
  store i32 0, i32* %4, align 4
  br label %172

163:                                              ; preds = %161, %104
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %15

172:                                              ; preds = %162, %160, %91, %75, %66, %37, %20, %13
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
