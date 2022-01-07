; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pcmcia_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pcmcia_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device_id = type { i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"pcmcia:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@PCMCIA_DEV_ID_MATCH_MANF_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@PCMCIA_DEV_ID_MATCH_CARD_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@PCMCIA_DEV_ID_MATCH_FUNC_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@PCMCIA_DEV_ID_MATCH_FUNCTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@PCMCIA_DEV_ID_MATCH_DEVICE_NO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@PCMCIA_DEV_ID_MATCH_PROD_ID4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pcmcia_device_id*, i8*)* @do_pcmcia_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pcmcia_entry(i8* %0, %struct.pcmcia_device_id* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcmcia_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pcmcia_device_id* %1, %struct.pcmcia_device_id** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @TO_NATIVE(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @TO_NATIVE(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @TO_NATIVE(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @TO_NATIVE(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @TO_NATIVE(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @TO_NATIVE(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %69, %3
  %51 = load i32, i32* %7, align 4
  %52 = icmp ult i32 %51, 4
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %55 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @TO_NATIVE(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %64 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcpy(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %77 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PCMCIA_DEV_ID_MATCH_MANF_ID, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %82 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ADD(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %87 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PCMCIA_DEV_ID_MATCH_CARD_ID, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %92 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ADD(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %93)
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %97 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNC_ID, align 4
  %100 = and i32 %98, %99
  %101 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %102 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ADD(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %103)
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %107 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @PCMCIA_DEV_ID_MATCH_FUNCTION, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %112 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ADD(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %113)
  %115 = load i8*, i8** %6, align 8
  %116 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %117 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PCMCIA_DEV_ID_MATCH_DEVICE_NO, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %122 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ADD(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %127 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID1, align 4
  %130 = and i32 %128, %129
  %131 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %132 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ADD(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %130, i32 %135)
  %137 = load i8*, i8** %6, align 8
  %138 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %139 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID2, align 4
  %142 = and i32 %140, %141
  %143 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %144 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ADD(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %142, i32 %147)
  %149 = load i8*, i8** %6, align 8
  %150 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %151 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID3, align 4
  %154 = and i32 %152, %153
  %155 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %156 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ADD(i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %154, i32 %159)
  %161 = load i8*, i8** %6, align 8
  %162 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %163 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @PCMCIA_DEV_ID_MATCH_PROD_ID4, align 4
  %166 = and i32 %164, %165
  %167 = load %struct.pcmcia_device_id*, %struct.pcmcia_device_id** %5, align 8
  %168 = getelementptr inbounds %struct.pcmcia_device_id, %struct.pcmcia_device_id* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ADD(i8* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %166, i32 %171)
  %173 = load i8*, i8** %6, align 8
  %174 = call i32 @add_wildcard(i8* %173)
  ret i32 1
}

declare dso_local i8* @TO_NATIVE(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
