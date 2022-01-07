; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_dwarf_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section* }
%struct.section = type { i32, i32* }
%struct.TYPE_3__ = type { i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"\0AContents of section .debug_str:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c".debug_str\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"  0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_dwarf_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_dwarf_str(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.section* null, %struct.section** %3, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.readelf*, %struct.readelf** %2, align 8
  %15 = getelementptr inbounds %struct.readelf, %struct.readelf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = load %struct.readelf*, %struct.readelf** %2, align 8
  %20 = getelementptr inbounds %struct.readelf, %struct.readelf* %19, i32 0, i32 1
  %21 = load %struct.section*, %struct.section** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.section, %struct.section* %21, i64 %23
  store %struct.section* %24, %struct.section** %3, align 8
  %25 = load %struct.section*, %struct.section** %3, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.section*, %struct.section** %3, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @strcmp(i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %40

36:                                               ; preds = %29, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %11

40:                                               ; preds = %35, %11
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.readelf*, %struct.readelf** %2, align 8
  %44 = getelementptr inbounds %struct.readelf, %struct.readelf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %174

48:                                               ; preds = %40
  %49 = call i32 (...) @elf_errno()
  %50 = load %struct.section*, %struct.section** %3, align 8
  %51 = getelementptr inbounds %struct.section, %struct.section* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.TYPE_3__* @elf_getdata(i32 %52, i32* null)
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %4, align 8
  %54 = icmp eq %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = call i32 (...) @elf_errno()
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 @elf_errmsg(i32 -1)
  %61 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %174

63:                                               ; preds = %48
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ule i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %174

69:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %171, %69
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %174

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 16
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ugt i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %7, align 4
  br label %98

95:                                               ; preds = %80
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 16
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %127, %98
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 16
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %106, %107
  %109 = srem i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @putchar(i8 signext 32)
  br label %113

113:                                              ; preds = %111, %105
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %127

119:                                              ; preds = %113
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %119, %117
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %100

130:                                              ; preds = %100
  %131 = call i32 @putchar(i8 signext 32)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %166, %130
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %169

137:                                              ; preds = %133
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = call i64 @isprint(i8 zeroext %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %137
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @putchar(i8 signext %150)
  br label %165

152:                                              ; preds = %137
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = call i32 @putchar(i8 signext 46)
  br label %164

162:                                              ; preds = %152
  %163 = call i32 @putchar(i8 signext 32)
  br label %164

164:                                              ; preds = %162, %160
  br label %165

165:                                              ; preds = %164, %145
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %133

169:                                              ; preds = %133
  %170 = call i32 @putchar(i8 signext 10)
  br label %171

171:                                              ; preds = %169
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 16
  store i32 %173, i32* %8, align 4
  br label %73

174:                                              ; preds = %47, %62, %68, %73
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
