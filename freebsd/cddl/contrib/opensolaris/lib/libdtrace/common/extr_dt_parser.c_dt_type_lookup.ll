; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_type_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_type_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@dt_type_lookup.delimiters = internal constant [9 x i8] c" \09\0A\0D\0B\0C*`\00", align 1
@yypcb = common dso_local global %struct.TYPE_2__* null, align 8
@EDT_BADSCOPE = common dso_local global i32 0, align 4
@DTRACE_OBJ_CDEFS = common dso_local global i8* null, align 8
@DTRACE_OBJ_EVERY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_type_lookup(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @yypcb, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %148, %2
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %150

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %34, %28
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  br label %29

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i8* @strpbrk(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @dt_type_lookup.delimiters, i64 0, i64 0))
  store i8* %44, i8** %8, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %37
  br label %150

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 96
  br i1 %51, label %52, label %147

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add i64 %57, 1
  %59 = call i8* @alloca(i64 %58)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = add i64 %64, 1
  %66 = call i8* @alloca(i64 %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @bcopy(i8* %67, i8* %68, i32 %74)
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = getelementptr inbounds i8, i8* %76, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @bcopy(i8* %83, i8* %84, i32 %90)
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i32 @strlen(i8* %102)
  %104 = add nsw i32 %103, 1
  %105 = call i32 @bcopy(i8* %93, i8* %100, i32 %104)
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i8* @strchr(i8* %107, i8 signext 96)
  store i8* %108, i8** %9, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %141

110:                                              ; preds = %52
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = call i8* @strchr(i8* %112, i8 signext 96)
  store i8* %113, i8** %9, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %141

115:                                              ; preds = %110
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = call i8* @strchr(i8* %117, i8 signext 96)
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* @EDT_BADSCOPE, align 4
  %123 = call i32 @dt_set_errno(i32* %121, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %165

124:                                              ; preds = %115
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 76
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 77
  br i1 %135, label %136, label %140

136:                                              ; preds = %130, %124
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @EDT_BADSCOPE, align 4
  %139 = call i32 @dt_set_errno(i32* %137, i32 %138)
  store i32 %139, i32* %3, align 4
  br label %165

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %110, %52
  %142 = load i32*, i32** %6, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @dtrace_lookup_by_type(i32* %142, i8* %143, i8* %144, i32* %145)
  store i32 %146, i32* %3, align 4
  br label %165

147:                                              ; preds = %47
  br label %148

148:                                              ; preds = %147
  %149 = load i8*, i8** %8, align 8
  store i8* %149, i8** %7, align 8
  br label %23

150:                                              ; preds = %46, %23
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @yypcb, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i8*, i8** @DTRACE_OBJ_CDEFS, align 8
  store i8* %156, i8** %11, align 8
  br label %159

157:                                              ; preds = %150
  %158 = load i8*, i8** @DTRACE_OBJ_EVERY, align 8
  store i8* %158, i8** %11, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = load i32*, i32** %6, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @dtrace_lookup_by_type(i32* %160, i8* %161, i8* %162, i32* %163)
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %159, %141, %136, %120
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dt_set_errno(i32*, i32) #1

declare dso_local i32 @dtrace_lookup_by_type(i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
