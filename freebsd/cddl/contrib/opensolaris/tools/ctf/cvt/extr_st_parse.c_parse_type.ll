; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_8__*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"parse_type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"t (type)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"= (definition)\00", align 1
@TYPEDEF = common dso_local global i64 0, align 8
@faketypenumber = common dso_local global i32 0, align 4
@FORWARD = common dso_local global i64 0, align 8
@INTRINSIC = common dso_local global i64 0, align 8
@II_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*)* @parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_type(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 116
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  %17 = call i32 @expected(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @id(i8* %19, i32* %8)
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.TYPE_8__* @lookup(i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %174

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 61
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  %33 = call i32 @expected(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @tdefdecl(i8* %35, i32 %36, %struct.TYPE_8__** %6)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TYPEDEF, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_8__* @lookup(i32 %53)
  %55 = icmp ne %struct.TYPE_8__* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @streq(i8* %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %43
  %68 = call %struct.TYPE_8__* @xcalloc(i32 32)
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %7, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @xstrdup(i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* @TYPEDEF, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %80, align 8
  %81 = load i32, i32* @faketypenumber, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @faketypenumber, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %6, align 8
  br label %86

86:                                               ; preds = %67, %43
  br label %164

87:                                               ; preds = %34
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %141

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FORWARD, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @INTRINSIC, align 8
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %98, %92
  %105 = phi i1 [ true, %92 ], [ %103, %98 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %140

112:                                              ; preds = %104
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @streq(i8* %115, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %140, label %121

121:                                              ; preds = %112
  %122 = call %struct.TYPE_8__* @xcalloc(i32 32)
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %7, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @xstrdup(i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* @TYPEDEF, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %134, align 8
  %135 = load i32, i32* @faketypenumber, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @faketypenumber, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %6, align 8
  br label %140

140:                                              ; preds = %121, %112, %104
  br label %163

141:                                              ; preds = %87
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = call %struct.TYPE_8__* @xcalloc(i32 32)
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %7, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @xstrdup(i32 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  %155 = load i64, i64* @TYPEDEF, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %160, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %161, %struct.TYPE_8__** %6, align 8
  br label %162

162:                                              ; preds = %147, %141
  br label %163

163:                                              ; preds = %162, %140
  br label %164

164:                                              ; preds = %163, %86
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = call i64 @tagadd(i32 %167, i32 %168, %struct.TYPE_8__* %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 -1, i32* %3, align 4
  br label %182

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %18
  %175 = load i32, i32* @II_TYPE, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  store %struct.TYPE_8__* %178, %struct.TYPE_8__** %180, align 8
  %181 = load i32, i32* @II_TYPE, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %174, %172
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @expected(i8*, i8*, i8*) #1

declare dso_local i8* @id(i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @lookup(i32) #1

declare dso_local i32 @tdefdecl(i8*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @streq(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @xcalloc(i32) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i64 @tagadd(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
