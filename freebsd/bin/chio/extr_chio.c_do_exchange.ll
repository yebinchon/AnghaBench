; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_exchange = type { i64, i64, i64, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"%s: too few arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: too many arguments\00", align 1
@CHET_VT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"%s %s: voltag only makes sense as an element source\00", align 1
@CE_INVERT1 = common dso_local global i32 0, align 4
@CE_INVERT2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: inappropriate modifier `%s'\00", align 1
@changer_fd = common dso_local global i32 0, align 4
@CHIOEXCHANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: CHIOEXCHANGE\00", align 1
@changer_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [95 x i8] c"usage: %s %s <src ET> <src EU> <dst1 ET> <dst1 EU>\0A       [<dst2 ET> <dst2 EU>] [inv1] [inv2]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_exchange(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.changer_exchange, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %166

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %166

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = call i32 @memset(%struct.changer_exchange* %8, i32 0, i32 56)
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @parse_element_type(i8* %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = load i64, i64* @CHET_VT, align 8
  %38 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %26
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 5
  %46 = call i32 @find_element(i8* %43, i64* %44, i8** %45)
  br label %52

47:                                               ; preds = %26
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @parse_element_unit(i8* %49)
  %51 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 5
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i8**, i8*** %7, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @parse_element_type(i8* %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* @CHET_VT, align 8
  %67 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %52
  %71 = load i8**, i8*** %7, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 1
  %74 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 6
  %75 = call i32 @find_element(i8* %72, i64* %73, i8** %74)
  br label %81

76:                                               ; preds = %52
  %77 = load i8**, i8*** %7, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @parse_element_unit(i8* %78)
  %80 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 6
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %76, %70
  %82 = load i8**, i8*** %7, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = load i8**, i8*** %7, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @is_special(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88, %81
  %94 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 2
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 4
  store i8* %98, i8** %99, align 8
  br label %128

100:                                              ; preds = %88
  %101 = load i8**, i8*** %7, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @parse_element_type(i8* %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 2
  store i64 %104, i64* %105, align 8
  %106 = load i8**, i8*** %7, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %7, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %6, align 4
  %110 = load i64, i64* @CHET_VT, align 8
  %111 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %100
  %115 = load i8*, i8** %5, align 8
  %116 = load i8**, i8*** %7, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @errx(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %115, i8* %117)
  br label %119

119:                                              ; preds = %114, %100
  %120 = load i8**, i8*** %7, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @parse_element_unit(i8* %121)
  %123 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 4
  store i8* %122, i8** %123, align 8
  %124 = load i8**, i8*** %7, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %7, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %119, %93
  br label %129

129:                                              ; preds = %156, %128
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %129
  %133 = load i8**, i8*** %7, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @parse_special(i8* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i8**, i8*** %7, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %7, align 8
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %9, align 4
  switch i32 %140, label %151 [
    i32 129, label %141
    i32 128, label %146
  ]

141:                                              ; preds = %132
  %142 = load i32, i32* @CE_INVERT1, align 4
  %143 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 8
  br label %156

146:                                              ; preds = %132
  %147 = load i32, i32* @CE_INVERT2, align 4
  %148 = getelementptr inbounds %struct.changer_exchange, %struct.changer_exchange* %8, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 8
  br label %156

151:                                              ; preds = %132
  %152 = load i8*, i8** %5, align 8
  %153 = load i8**, i8*** %7, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %152, i8* %154)
  br label %156

156:                                              ; preds = %151, %146, %141
  br label %129

157:                                              ; preds = %129
  %158 = load i32, i32* @changer_fd, align 4
  %159 = load i32, i32* @CHIOEXCHANGE, align 4
  %160 = call i64 @ioctl(i32 %158, i32 %159, %struct.changer_exchange* %8)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* @changer_name, align 4
  %164 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %162, %157
  store i32 0, i32* %4, align 4
  br label %171

166:                                              ; preds = %22, %16
  %167 = load i32, i32* @stderr, align 4
  %168 = call i8* (...) @getprogname()
  %169 = load i8*, i8** %5, align 8
  %170 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.5, i64 0, i64 0), i8* %168, i8* %169)
  store i32 1, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %165
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @memset(%struct.changer_exchange*, i32, i32) #1

declare dso_local i8* @parse_element_type(i8*) #1

declare dso_local i32 @find_element(i8*, i64*, i8**) #1

declare dso_local i8* @parse_element_unit(i8*) #1

declare dso_local i64 @is_special(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

declare dso_local i32 @parse_special(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.changer_exchange*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
