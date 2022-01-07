; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_list_symbol_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_list_symbol_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@eject = common dso_local global i32 0, align 4
@symbol_rootP = external dso_local global i32*, align 8
@absolute_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%%0%lulx\00", align 1
@list_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"DEFINED SYMBOLS\0A\00", align 1
@on_page = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%20s:%-5d  %s:%s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%33s:%s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"NO DEFINED SYMBOLS\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@undefined_section = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"UNDEFINED SYMBOLS\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"NO UNDEFINED SYMBOLS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @list_symbol_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_symbol_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [30 x i8], align 16
  %4 = alloca [8 x i8], align 1
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* @eject, align 4
  %6 = call i32 @listing_page(i32 0)
  %7 = load i32*, i32** @symbol_rootP, align 8
  store i32* %7, i32** %2, align 8
  br label %8

8:                                                ; preds = %94, %0
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %97

11:                                               ; preds = %8
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @S_GET_SEGMENT(i32* %12)
  %14 = call i64 @SEG_NORMAL(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @S_GET_SEGMENT(i32* %17)
  %19 = load i64, i64* @absolute_section, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %16, %11
  %22 = load i32*, i32** %2, align 8
  %23 = call i64 @symbol_section_p(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %94

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = call i8* @S_GET_NAME(i32* %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %92

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @S_GET_VALUE(i32* %31)
  store i64 %32, i64* %5, align 8
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 16)
  %35 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @sprintf(i8* %35, i8* %36, i64 %37)
  %39 = load i32, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @list_file, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @on_page, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @on_page, align 4
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %41, %30
  %47 = load i32*, i32** %2, align 8
  %48 = call %struct.TYPE_6__* @symbol_get_frag(i32* %47)
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i32*, i32** %2, align 8
  %52 = call %struct.TYPE_6__* @symbol_get_frag(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load i32, i32* @list_file, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = call %struct.TYPE_6__* @symbol_get_frag(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = call %struct.TYPE_6__* @symbol_get_frag(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = call i64 @S_GET_SEGMENT(i32* %72)
  %74 = call i8* @segment_name(i64 %73)
  %75 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  %76 = load i32*, i32** %2, align 8
  %77 = call i8* @S_GET_NAME(i32* %76)
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 %71, i8* %74, i8* %75, i8* %77)
  br label %88

79:                                               ; preds = %50, %46
  %80 = load i32, i32* @list_file, align 4
  %81 = load i32*, i32** %2, align 8
  %82 = call i64 @S_GET_SEGMENT(i32* %81)
  %83 = call i8* @segment_name(i64 %82)
  %84 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 0
  %85 = load i32*, i32** %2, align 8
  %86 = call i8* @S_GET_NAME(i32* %85)
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %83, i8* %84, i8* %86)
  br label %88

88:                                               ; preds = %79, %56
  %89 = load i32, i32* @on_page, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @on_page, align 4
  %91 = call i32 @listing_page(i32 0)
  br label %92

92:                                               ; preds = %88, %26
  br label %93

93:                                               ; preds = %92, %16
  br label %94

94:                                               ; preds = %93, %25
  %95 = load i32*, i32** %2, align 8
  %96 = call i32* @symbol_next(i32* %95)
  store i32* %96, i32** %2, align 8
  br label %8

97:                                               ; preds = %8
  %98 = load i32, i32* %1, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @list_file, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @on_page, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @on_page, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* @list_file, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @on_page, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @on_page, align 4
  %110 = call i32 @listing_page(i32 0)
  store i32 0, i32* %1, align 4
  %111 = load i32*, i32** @symbol_rootP, align 8
  store i32* %111, i32** %2, align 8
  br label %112

112:                                              ; preds = %148, %105
  %113 = load i32*, i32** %2, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %151

115:                                              ; preds = %112
  %116 = load i32*, i32** %2, align 8
  %117 = call i8* @S_GET_NAME(i32* %116)
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %147

119:                                              ; preds = %115
  %120 = load i32*, i32** %2, align 8
  %121 = call i8* @S_GET_NAME(i32* %120)
  %122 = call i64 @strlen(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %119
  %125 = load i32*, i32** %2, align 8
  %126 = call i64 @S_GET_SEGMENT(i32* %125)
  %127 = load i64, i64* @undefined_section, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %124
  %130 = load i32, i32* %1, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  store i32 1, i32* %1, align 4
  %133 = load i32, i32* @list_file, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* @on_page, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @on_page, align 4
  %137 = call i32 @listing_page(i32 0)
  br label %138

138:                                              ; preds = %132, %129
  %139 = load i32, i32* @list_file, align 4
  %140 = load i32*, i32** %2, align 8
  %141 = call i8* @S_GET_NAME(i32* %140)
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* @on_page, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @on_page, align 4
  %145 = call i32 @listing_page(i32 0)
  br label %146

146:                                              ; preds = %138, %124
  br label %147

147:                                              ; preds = %146, %119, %115
  br label %148

148:                                              ; preds = %147
  %149 = load i32*, i32** %2, align 8
  %150 = call i32* @symbol_next(i32* %149)
  store i32* %150, i32** %2, align 8
  br label %112

151:                                              ; preds = %112
  %152 = load i32, i32* %1, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @list_file, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %157 = load i32, i32* @on_page, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @on_page, align 4
  %159 = call i32 @listing_page(i32 0)
  br label %160

160:                                              ; preds = %154, %151
  ret void
}

declare dso_local i32 @listing_page(i32) #1

declare dso_local i64 @SEG_NORMAL(i64) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i64 @symbol_section_p(i32*) #1

declare dso_local i8* @S_GET_NAME(i32*) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @symbol_get_frag(i32*) #1

declare dso_local i8* @segment_name(i64) #1

declare dso_local i32* @symbol_next(i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
