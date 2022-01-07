; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmpdef/extr_gensnmpdef.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmpdef/extr_gensnmpdef.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"c:Eeh\00", align 1
@errno = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"argument to -c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: not a number\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s: out of range\00", align 1
@cut = common dso_local global i64 0, align 8
@do_typedef = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@usgtxt = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@SMI_FLAG_ERRORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: cannot load\00", align 1
@SMI_NODEKIND_ANY = common dso_local global i32 0, align 4
@last_node = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call i32 @smiInit(i32* null)
  br label %16

16:                                               ; preds = %56, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %56 [
    i32 99, label %23
    i32 69, label %49
    i32 101, label %50
    i32 104, label %51
  ]

23:                                               ; preds = %21
  store i32 0, i32* @errno, align 4
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i64 @strtol(i8* %24, i8** %14, i32 10)
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* @errno, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i8*, i8** %14, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i64, i64* %13, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  %43 = icmp sgt i64 %42, 5
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* @cut, align 8
  br label %56

49:                                               ; preds = %21
  store i64 69, i64* @do_typedef, align 8
  br label %56

50:                                               ; preds = %21
  store i64 101, i64* @do_typedef, align 8
  br label %56

51:                                               ; preds = %21
  %52 = load i32, i32* @stderr, align 4
  %53 = load i8*, i8** @usgtxt, align 8
  %54 = call i32 @fprintf(i32 %52, i8* %53)
  %55 = call i32 @exit(i32 0) #3
  unreachable

56:                                               ; preds = %21, %50, %49, %47
  br label %16

57:                                               ; preds = %16
  %58 = load i64, i64* @optind, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i64, i64* @optind, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 %63
  store i8** %65, i8*** %5, align 8
  %66 = call i32 (...) @smiGetFlags()
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @SMI_FLAG_ERRORS, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @smiSetFlags(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 8, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32** @malloc(i32 %75)
  store i32** %76, i32*** %8, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = icmp eq i32** %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %81

81:                                               ; preds = %79, %57
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %108, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @smiLoadModule(i8* %91)
  store i8* %92, i8** %9, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %94, %86
  %102 = load i8*, i8** %9, align 8
  %103 = call i32* @smiGetModule(i8* %102)
  %104 = load i32**, i32*** %8, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  store i32* %103, i32** %107, align 8
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %82

111:                                              ; preds = %82
  store i64 0, i64* %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %161, %111
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %164

116:                                              ; preds = %112
  %117 = load i32**, i32*** %8, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %161

124:                                              ; preds = %116
  %125 = load i32**, i32*** %8, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @SMI_NODEKIND_ANY, align 4
  %131 = call %struct.TYPE_8__* @smiGetFirstNode(i32* %129, i32 %130)
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %10, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %133 = icmp eq %struct.TYPE_8__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %161

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %159, %135
  %137 = load i64, i64* @do_typedef, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = call i64 @open_node(%struct.TYPE_8__* %140, i64 %141, %struct.TYPE_8__** %11)
  store i64 %142, i64* %12, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @print_it(%struct.TYPE_8__* %143, i64 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %11, align 8
  br label %150

147:                                              ; preds = %136
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %149 = call i32 @print_typdefs(%struct.TYPE_8__* %148)
  br label %150

150:                                              ; preds = %147, %139
  %151 = load i32*, i32** @last_node, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load i32*, i32** @last_node, align 8
  %155 = load i32, i32* @SMI_NODEKIND_ANY, align 4
  %156 = call %struct.TYPE_8__* @smiGetNextNode(i32* %154, i32 %155)
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %10, align 8
  %157 = icmp eq %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %153, %150
  br label %160

159:                                              ; preds = %153
  br label %136

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %134, %123
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %112

164:                                              ; preds = %112
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %166 = icmp ne %struct.TYPE_8__* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i64, i64* @do_typedef, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %173, 1
  %175 = load i64, i64* %12, align 8
  %176 = sub nsw i64 %175, 1
  %177 = call i64 @close_node(i64 %174, i64 %176)
  store i64 %177, i64* %12, align 8
  br label %184

178:                                              ; preds = %167, %164
  %179 = load i64, i64* @do_typedef, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 (...) @tdefs_cleanup()
  br label %183

183:                                              ; preds = %181, %178
  br label %184

184:                                              ; preds = %183, %170
  ret i32 0
}

declare dso_local i32 @smiInit(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @smiGetFlags(...) #1

declare dso_local i32 @smiSetFlags(i32) #1

declare dso_local i32** @malloc(i32) #1

declare dso_local i8* @smiLoadModule(i8*) #1

declare dso_local i32* @smiGetModule(i8*) #1

declare dso_local %struct.TYPE_8__* @smiGetFirstNode(i32*, i32) #1

declare dso_local i64 @open_node(%struct.TYPE_8__*, i64, %struct.TYPE_8__**) #1

declare dso_local i32 @print_it(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @print_typdefs(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @smiGetNextNode(i32*, i32) #1

declare dso_local i64 @close_node(i64, i64) #1

declare dso_local i32 @tdefs_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
