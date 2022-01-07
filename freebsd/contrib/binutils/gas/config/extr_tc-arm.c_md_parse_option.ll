; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_parse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_option_table = type { i32*, i8*, i32, i32* }
%struct.arm_legacy_option_table = type { i32*, i8*, i32, i32** }
%struct.arm_long_option_table = type { i32*, i8*, i32 (i32)* }

@target_big_endian = common dso_local global i32 0, align 4
@arm_opts = common dso_local global %struct.arm_option_table* null, align 8
@arm_legacy_opts = common dso_local global %struct.arm_legacy_option_table* null, align 8
@arm_long_opts = common dso_local global %struct.arm_long_option_table* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_parse_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arm_option_table*, align 8
  %7 = alloca %struct.arm_legacy_option_table*, align 8
  %8 = alloca %struct.arm_long_option_table*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %13 [
    i32 129, label %10
    i32 128, label %11
    i32 97, label %12
  ]

10:                                               ; preds = %2
  store i32 1, i32* @target_big_endian, align 4
  br label %165

11:                                               ; preds = %2
  store i32 0, i32* @target_big_endian, align 4
  br label %165

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %166

13:                                               ; preds = %2
  %14 = load %struct.arm_option_table*, %struct.arm_option_table** @arm_opts, align 8
  store %struct.arm_option_table* %14, %struct.arm_option_table** %6, align 8
  br label %15

15:                                               ; preds = %61, %13
  %16 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %17 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %64

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %23 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %33 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31, %28
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %41 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @streq(i8* %39, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %38, %31
  %48 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %49 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %54 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %57 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %47
  store i32 1, i32* %3, align 4
  br label %166

60:                                               ; preds = %38, %20
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.arm_option_table*, %struct.arm_option_table** %6, align 8
  %63 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %62, i32 1
  store %struct.arm_option_table* %63, %struct.arm_option_table** %6, align 8
  br label %15

64:                                               ; preds = %15
  %65 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** @arm_legacy_opts, align 8
  store %struct.arm_legacy_option_table* %65, %struct.arm_legacy_option_table** %7, align 8
  br label %66

66:                                               ; preds = %111, %64
  %67 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %68 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %114

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %74 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %71
  %80 = load i8*, i8** %5, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %84 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %82, %79
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %92 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = ptrtoint i32* %94 to i32
  %96 = call i32 @streq(i8* %90, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %89, %82
  %99 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %100 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %99, i32 0, i32 3
  %101 = load i32**, i32*** %100, align 8
  %102 = icmp ne i32** %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %105 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %104, i32 0, i32 2
  %106 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %107 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %106, i32 0, i32 3
  %108 = load i32**, i32*** %107, align 8
  store i32* %105, i32** %108, align 8
  br label %109

109:                                              ; preds = %103, %98
  store i32 1, i32* %3, align 4
  br label %166

110:                                              ; preds = %89, %71
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.arm_legacy_option_table*, %struct.arm_legacy_option_table** %7, align 8
  %113 = getelementptr inbounds %struct.arm_legacy_option_table, %struct.arm_legacy_option_table* %112, i32 1
  store %struct.arm_legacy_option_table* %113, %struct.arm_legacy_option_table** %7, align 8
  br label %66

114:                                              ; preds = %66
  %115 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** @arm_long_opts, align 8
  store %struct.arm_long_option_table* %115, %struct.arm_long_option_table** %8, align 8
  br label %116

116:                                              ; preds = %161, %114
  %117 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %8, align 8
  %118 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %164

121:                                              ; preds = %116
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %8, align 8
  %124 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %122, %127
  br i1 %128, label %129, label %160

129:                                              ; preds = %121
  %130 = load i8*, i8** %5, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load i8*, i8** %5, align 8
  %134 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %8, align 8
  %135 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = ptrtoint i32* %137 to i32
  %139 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %8, align 8
  %140 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = call i32 @strlen(i32* %142)
  %144 = call i32 @strncmp(i8* %133, i32 %138, i32 %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %132
  %147 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %8, align 8
  %148 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %147, i32 0, i32 2
  %149 = load i32 (i32)*, i32 (i32)** %148, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %8, align 8
  %152 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @strlen(i32* %153)
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %150, i64 %155
  %157 = getelementptr inbounds i8, i8* %156, i64 -1
  %158 = ptrtoint i8* %157 to i32
  %159 = call i32 %149(i32 %158)
  store i32 %159, i32* %3, align 4
  br label %166

160:                                              ; preds = %132, %129, %121
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %8, align 8
  %163 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %162, i32 1
  store %struct.arm_long_option_table* %163, %struct.arm_long_option_table** %8, align 8
  br label %116

164:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %166

165:                                              ; preds = %11, %10
  store i32 1, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %164, %146, %109, %59, %12
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @streq(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
