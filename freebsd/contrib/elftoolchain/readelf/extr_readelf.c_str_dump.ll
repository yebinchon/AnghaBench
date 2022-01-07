; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_str_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_str_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.section* }
%struct.section = type { i8*, i32 }
%struct.TYPE_4__ = type { i64, i32* }

@STR_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\0ASection '%s' has no data to dump.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\0AString dump of section '%s':\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"  [%6lx]  \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"  No strings found in this section.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @str_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str_dump(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 1, i32* %9, align 4
  br label %13

13:                                               ; preds = %176, %1
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.readelf*, %struct.readelf** %2, align 8
  %17 = getelementptr inbounds %struct.readelf, %struct.readelf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %179

20:                                               ; preds = %13
  %21 = load %struct.readelf*, %struct.readelf** %2, align 8
  %22 = getelementptr inbounds %struct.readelf, %struct.readelf* %21, i32 0, i32 1
  %23 = load %struct.section*, %struct.section** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.section, %struct.section* %23, i64 %25
  store %struct.section* %26, %struct.section** %3, align 8
  %27 = load %struct.readelf*, %struct.readelf** %2, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.section*, %struct.section** %3, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @STR_DUMP, align 4
  %34 = call i32* @find_dumpop(%struct.readelf* %27, i64 %29, i8* %32, i32 %33, i32 -1)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %176

37:                                               ; preds = %20
  %38 = call i32 (...) @elf_errno()
  %39 = load %struct.section*, %struct.section** %3, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_4__* @elf_getdata(i32 %41, i32* null)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %4, align 8
  %43 = icmp eq %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.section*, %struct.section** %3, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_4__* @elf_rawdata(i32 %47, i32* null)
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %4, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = call i32 (...) @elf_errno()
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @elf_errmsg(i32 %55)
  %57 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %176

59:                                               ; preds = %44, %37
  %60 = call i32 (...) @elf_errno()
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %59
  %71 = load %struct.section*, %struct.section** %3, align 8
  %72 = getelementptr inbounds %struct.section, %struct.section* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %176

75:                                               ; preds = %65
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8* %83, i8** %7, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = bitcast i32* %86 to i8*
  store i8* %87, i8** %5, align 8
  store i32 0, i32* %12, align 4
  %88 = load %struct.section*, %struct.section** %3, align 8
  %89 = getelementptr inbounds %struct.section, %struct.section* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %166, %75
  br label %93

93:                                               ; preds = %105, %92
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = icmp ult i8* %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @isprint(i8 zeroext %99)
  %101 = icmp ne i64 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %97, %93
  %104 = phi i1 [ false, %93 ], [ %102, %97 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  br label %93

108:                                              ; preds = %103
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = icmp uge i8* %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %169

113:                                              ; preds = %108
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %115, i8** %6, align 8
  br label %116

116:                                              ; preds = %127, %113
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = icmp ult i8* %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  %123 = call i64 @isprint(i8 zeroext %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i1 [ false, %116 ], [ %124, %120 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %6, align 8
  br label %116

130:                                              ; preds = %125
  %131 = load i8*, i8** %5, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to i8*
  %136 = ptrtoint i8* %131 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %138)
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %157, %130
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load i8*, i8** %5, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @putchar(i8 signext %155)
  br label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %146

160:                                              ; preds = %146
  %161 = call i32 @putchar(i8 signext 10)
  store i32 1, i32* %12, align 4
  %162 = load i8*, i8** %6, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = icmp uge i8* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %169

166:                                              ; preds = %160
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  store i8* %168, i8** %5, align 8
  br label %92

169:                                              ; preds = %165, %112
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %169
  %175 = call i32 @putchar(i8 signext 10)
  br label %176

176:                                              ; preds = %174, %70, %58, %36
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %13

179:                                              ; preds = %13
  ret void
}

declare dso_local i32* @find_dumpop(%struct.readelf*, i64, i8*, i32, i32) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_4__* @elf_getdata(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
