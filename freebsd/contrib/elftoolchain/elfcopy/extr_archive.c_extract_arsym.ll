; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_extract_arsym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_extract_arsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"internal: cannot extract symbols from non-elf object\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getshdr failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"elf_strptr failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"gelf_getsym failed: %s\00", align 1
@STB_GLOBAL = common dso_local global i64 0, align 8
@STB_WEAK = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*)* @extract_arsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_arsym(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %14 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %15 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @elf_kind(i32 %16)
  %18 = load i64, i64* @ELF_K_ELF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %180

22:                                               ; preds = %1
  %23 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %24 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @elf_getshstrndx(i32 %25, i64* %9)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = call i32 @elf_errmsg(i32 -1)
  %30 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %180

31:                                               ; preds = %22
  store i32 -1, i32* %11, align 4
  store i32* null, i32** %3, align 8
  br label %32

32:                                               ; preds = %66, %56, %43, %31
  %33 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %34 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32* @elf_nextscn(i32 %35, i32* %36)
  store i32* %37, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load i32*, i32** %3, align 8
  %41 = call %struct.TYPE_12__* @gelf_getshdr(i32* %40, %struct.TYPE_12__* %4)
  %42 = icmp ne %struct.TYPE_12__* %41, %4
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 @elf_errmsg(i32 -1)
  %45 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %32

46:                                               ; preds = %39
  %47 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %48 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @elf_strptr(i32 %49, i32 %51, i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = call i32 @elf_errmsg(i32 -1)
  %58 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %32

59:                                               ; preds = %46
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @elf_ndxscn(i32* %64)
  store i32 %65, i32* %11, align 4
  br label %67

66:                                               ; preds = %59
  br label %32

67:                                               ; preds = %63, %32
  %68 = call i32 (...) @elf_errno()
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @elf_errmsg(i32 %72)
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %180

79:                                               ; preds = %75
  store i32* null, i32** %3, align 8
  br label %80

80:                                               ; preds = %171, %99, %91, %79
  %81 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %82 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = call i32* @elf_nextscn(i32 %83, i32* %84)
  store i32* %85, i32** %3, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %172

87:                                               ; preds = %80
  %88 = load i32*, i32** %3, align 8
  %89 = call %struct.TYPE_12__* @gelf_getshdr(i32* %88, %struct.TYPE_12__* %4)
  %90 = icmp ne %struct.TYPE_12__* %89, %4
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = call i32 @elf_errmsg(i32 -1)
  %93 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %80

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SHT_SYMTAB, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %80

100:                                              ; preds = %94
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store i64 0, i64* %8, align 8
  br label %101

101:                                              ; preds = %170, %100
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = call %struct.TYPE_13__* @elf_getdata(i32* %107, %struct.TYPE_13__* %108)
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %6, align 8
  %110 = icmp ne %struct.TYPE_13__* %109, null
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i1 [ false, %101 ], [ %110, %106 ]
  br i1 %112, label %113, label %171

113:                                              ; preds = %111
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %116, %118
  store i32 %119, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %167, %113
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %170

124:                                              ; preds = %120
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_13__* %125, i32 %126, %struct.TYPE_11__* %5)
  %128 = icmp ne %struct.TYPE_11__* %127, %5
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = call i32 @elf_errmsg(i32 -1)
  %131 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  br label %167

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @GELF_ST_BIND(i32 %134)
  %136 = load i64, i64* @STB_GLOBAL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @GELF_ST_BIND(i32 %140)
  %142 = load i64, i64* @STB_WEAK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %167

145:                                              ; preds = %138, %132
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SHN_UNDEF, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %167

151:                                              ; preds = %145
  %152 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %153 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %11, align 4
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @elf_strptr(i32 %154, i32 %155, i32 %157)
  store i8* %158, i8** %7, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = call i32 @elf_errmsg(i32 -1)
  %162 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  br label %167

163:                                              ; preds = %151
  %164 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @add_to_ar_sym_table(%struct.elfcopy* %164, i8* %165)
  br label %167

167:                                              ; preds = %163, %160, %150, %144, %129
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %120

170:                                              ; preds = %120
  br label %101

171:                                              ; preds = %111
  br label %80

172:                                              ; preds = %80
  %173 = call i32 (...) @elf_errno()
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @elf_errmsg(i32 %177)
  %179 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %20, %28, %78, %176, %172
  ret void
}

declare dso_local i64 @elf_kind(i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @elf_getshstrndx(i32, i64*) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @elf_nextscn(i32, i32*) #1

declare dso_local %struct.TYPE_12__* @gelf_getshdr(i32*, %struct.TYPE_12__*) #1

declare dso_local i8* @elf_strptr(i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @elf_ndxscn(i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_13__* @elf_getdata(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_13__*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @GELF_ST_BIND(i32) #1

declare dso_local i32 @add_to_ar_sym_table(%struct.elfcopy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
