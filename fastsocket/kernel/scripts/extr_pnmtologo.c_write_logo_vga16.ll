; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_pnmtologo.c_write_logo_vga16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_pnmtologo.c_write_logo_vga16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logo_height = common dso_local global i32 0, align 4
@logo_width = common dso_local global i32 0, align 4
@logo_data = common dso_local global i32** null, align 8
@clut_vga16 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [110 x i8] c"Image must use the 16 console colors only\0AUse ppmquant(1) -map clut_vga16.ppm to reduce the number of colors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_logo_vga16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_logo_vga16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %50, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @logo_height, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %46, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @logo_width, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp ult i32 %16, 16
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i32**, i32*** @logo_data, align 8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @clut_vga16, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @is_equal(i32 %27, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %40

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %15

40:                                               ; preds = %35, %15
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @die(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %10

49:                                               ; preds = %10
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %5

53:                                               ; preds = %5
  %54 = call i32 (...) @write_header()
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %137, %53
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @logo_height, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %140

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %133, %59
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @logo_width, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %136

64:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, i32* %3, align 4
  %67 = icmp ult i32 %66, 16
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32**, i32*** @logo_data, align 8
  %70 = load i32, i32* %1, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %2, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** @clut_vga16, align 8
  %79 = load i32, i32* %3, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @is_equal(i32 %77, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %90

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %65

90:                                               ; preds = %85, %65
  %91 = load i32, i32* %3, align 4
  %92 = shl i32 %91, 4
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %4, align 1
  %94 = load i32, i32* %2, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* @logo_width, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %121, %98
  %100 = load i32, i32* %3, align 4
  %101 = icmp ult i32 %100, 16
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load i32**, i32*** @logo_data, align 8
  %104 = load i32, i32* %1, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %2, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** @clut_vga16, align 8
  %113 = load i32, i32* %3, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @is_equal(i32 %111, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  br label %124

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %3, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %99

124:                                              ; preds = %119, %99
  %125 = load i32, i32* %3, align 4
  %126 = load i8, i8* %4, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %4, align 1
  br label %130

130:                                              ; preds = %124, %90
  %131 = load i8, i8* %4, align 1
  %132 = call i32 @write_hex(i8 zeroext %131)
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %2, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %2, align 4
  br label %60

136:                                              ; preds = %60
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %1, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %1, align 4
  br label %55

140:                                              ; preds = %55
  %141 = call i32 (...) @write_footer()
  ret void
}

declare dso_local i64 @is_equal(i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @write_header(...) #1

declare dso_local i32 @write_hex(i8 zeroext) #1

declare dso_local i32 @write_footer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
