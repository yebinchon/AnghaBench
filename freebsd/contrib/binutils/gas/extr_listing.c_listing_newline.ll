; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_newline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i8*, i64, i32*, i32, %struct.TYPE_4__*, i32, i32 }

@listing_newline.last_line = internal global i32 65535, align 4
@listing_newline.last_file = internal global i8* null, align 8
@listing = common dso_local global i32 0, align 4
@now_seg = common dso_local global i64 0, align 8
@absolute_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"{standard input}\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@is_end_of_line = common dso_local global i32* null, align 8
@listing_tail = common dso_local global %struct.TYPE_4__* null, align 8
@head = common dso_local global %struct.TYPE_4__* null, align 8
@frag_now = common dso_local global i32 0, align 4
@EDICT_NONE = common dso_local global i32 0, align 4
@LISTING_NODEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listing_newline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %12 = load i32, i32* @listing, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %180

15:                                               ; preds = %1
  %16 = load i64, i64* @now_seg, align 8
  %17 = load i64, i64* @absolute_section, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %180

20:                                               ; preds = %15
  %21 = call i32 @as_where(i8** %3, i32* %4)
  %22 = load i8*, i8** %2, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %136

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @listing_newline.last_line, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i8*, i8** @listing_newline.last_file, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** @listing_newline.last_file, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %31, %28
  br label %180

40:                                               ; preds = %34, %24
  %41 = call i8* @xmalloc(i32 72)
  %42 = bitcast i8* %41 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %132

47:                                               ; preds = %40
  %48 = load i8*, i8** @input_line_pointer, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %132

50:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  %51 = load i8*, i8** @input_line_pointer, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %91, %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** @is_end_of_line, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %61, %58
  %71 = phi i1 [ true, %58 ], [ %69, %61 ]
  br label %72

72:                                               ; preds = %70, %53
  %73 = phi i1 [ false, %53 ], [ %71, %70 ]
  br i1 %73, label %74, label %94

74:                                               ; preds = %72
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 34
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 92
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %85, %79, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  br label %53

94:                                               ; preds = %72
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** @input_line_pointer, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = add nsw i64 %99, 2
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i8* @xmalloc(i32 %102)
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %128

106:                                              ; preds = %94
  %107 = load i8*, i8** @input_line_pointer, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %6, align 8
  store i8* %109, i8** %10, align 8
  br label %110

110:                                              ; preds = %125, %106
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  %117 = load i8, i8* %115, align 1
  store i8 %117, i8* %11, align 1
  %118 = load i8, i8* %11, align 1
  %119 = call i32 @ISCNTRL(i8 zeroext %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %114
  %122 = load i8, i8* %11, align 1
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  store i8 %122, i8* %123, align 1
  br label %125

125:                                              ; preds = %121, %114
  br label %110

126:                                              ; preds = %110
  %127 = load i8*, i8** %10, align 8
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %126, %94
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %135

132:                                              ; preds = %47, %40
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i8* null, i8** %134, align 8
  br label %135

135:                                              ; preds = %132, %128
  br label %142

136:                                              ; preds = %20
  %137 = call i8* @xmalloc(i32 72)
  %138 = bitcast i8* %137 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %5, align 8
  %139 = load i8*, i8** %2, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %136, %135
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* @listing_newline.last_line, align 4
  %144 = load i8*, i8** %3, align 8
  store i8* %144, i8** @listing_newline.last_file, align 8
  %145 = call i32 (...) @new_frag()
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @listing_tail, align 8
  %147 = icmp ne %struct.TYPE_4__* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @listing_tail, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 7
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %151, align 8
  br label %154

152:                                              ; preds = %142
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** @head, align 8
  br label %154

154:                                              ; preds = %152, %148
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %155, %struct.TYPE_4__** @listing_tail, align 8
  %156 = load i32, i32* @frag_now, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 @file_info(i8* %162)
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 7
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %167, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  store i8* null, i8** %169, align 8
  %170 = load i32, i32* @EDICT_NONE, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 6
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  store i32* null, i32** %174, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 4
  store i64 0, i64* %176, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = call i32 (...) @new_frag()
  br label %180

180:                                              ; preds = %154, %39, %19, %14
  ret void
}

declare dso_local i32 @as_where(i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ISCNTRL(i8 zeroext) #1

declare dso_local i32 @new_frag(...) #1

declare dso_local i32 @file_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
