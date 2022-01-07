; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_maintenance_do_deprecate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_maintenance_do_deprecate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32, i8* }

@.str = private unnamed_addr constant [39 x i8] c"Can't find command '%s' to deprecate.\0A\00", align 1
@MALLOCED_REPLACEMENT = common dso_local global i32 0, align 4
@DEPRECATED_WARN_USER = common dso_local global i32 0, align 4
@CMD_DEPRECATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @maintenance_do_deprecate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maintenance_do_deprecate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_list_element*, align 8
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca %struct.cmd_list_element*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %5, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %6, align 8
  store %struct.cmd_list_element* null, %struct.cmd_list_element** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %148

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @lookup_cmd_composition(i8* %16, %struct.cmd_list_element** %5, %struct.cmd_list_element** %6, %struct.cmd_list_element** %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @printf_filtered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %148

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 34)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 34)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %8, align 8
  %49 = call i8* @xstrdup(i8* %48)
  store i8* %49, i8** %11, align 8
  br label %50

50:                                               ; preds = %37, %30
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55, %52
  store i8* null, i8** %11, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %61 = icmp ne %struct.cmd_list_element* %60, null
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %64 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MALLOCED_REPLACEMENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %71 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @xfree(i8* %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %79 = load i32, i32* @CMD_DEPRECATED, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %82 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %94

85:                                               ; preds = %74
  %86 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %87 = load i32, i32* @CMD_DEPRECATED, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %91 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %85, %77
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %97 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @MALLOCED_REPLACEMENT, align 4
  %99 = load %struct.cmd_list_element*, %struct.cmd_list_element** %5, align 8
  %100 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %148

103:                                              ; preds = %59
  %104 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %105 = icmp ne %struct.cmd_list_element* %104, null
  br i1 %105, label %106, label %147

106:                                              ; preds = %103
  %107 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %108 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MALLOCED_REPLACEMENT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %115 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @xfree(i8* %116)
  br label %118

118:                                              ; preds = %113, %106
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %123 = load i32, i32* @CMD_DEPRECATED, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %126 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %138

129:                                              ; preds = %118
  %130 = load i32, i32* @DEPRECATED_WARN_USER, align 4
  %131 = load i32, i32* @CMD_DEPRECATED, align 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %135 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %129, %121
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %141 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @MALLOCED_REPLACEMENT, align 4
  %143 = load %struct.cmd_list_element*, %struct.cmd_list_element** %7, align 8
  %144 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %148

147:                                              ; preds = %103
  br label %148

148:                                              ; preds = %14, %19, %94, %138, %147
  ret void
}

declare dso_local i32 @lookup_cmd_composition(i8*, %struct.cmd_list_element**, %struct.cmd_list_element**, %struct.cmd_list_element**) #1

declare dso_local i32 @printf_filtered(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
