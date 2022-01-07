; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_symtabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_symtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32, i64, %struct.section* }
%struct.section = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@RE_DD = common dso_local global i32 0, align 4
@SHT_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"gelf_getdyn failed: %s\00", align 1
@DT_SYMTAB = common dso_local global i64 0, align 8
@SHT_SYMTAB = common dso_local global i64 0, align 8
@SHT_DYNSYM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_symtabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_symtabs(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.readelf*, %struct.readelf** %2, align 8
  %11 = getelementptr inbounds %struct.readelf, %struct.readelf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RE_DD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %1
  store %struct.section* null, %struct.section** %5, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.readelf*, %struct.readelf** %2, align 8
  %21 = getelementptr inbounds %struct.readelf, %struct.readelf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.readelf*, %struct.readelf** %2, align 8
  %26 = getelementptr inbounds %struct.readelf, %struct.readelf* %25, i32 0, i32 2
  %27 = load %struct.section*, %struct.section** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.section, %struct.section* %27, i64 %29
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SHT_DYNAMIC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.readelf*, %struct.readelf** %2, align 8
  %37 = getelementptr inbounds %struct.readelf, %struct.readelf* %36, i32 0, i32 2
  %38 = load %struct.section*, %struct.section** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.section, %struct.section* %38, i64 %40
  store %struct.section* %41, %struct.section** %5, align 8
  br label %46

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %17

46:                                               ; preds = %35, %17
  %47 = load %struct.section*, %struct.section** %5, align 8
  %48 = icmp eq %struct.section* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %156

50:                                               ; preds = %46
  %51 = call i32 (...) @elf_errno()
  %52 = load %struct.section*, %struct.section** %5, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_10__* @elf_getdata(i32 %54, i32* null)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %4, align 8
  %56 = icmp eq %struct.TYPE_10__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = call i32 (...) @elf_errno()
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 @elf_errmsg(i32 -1)
  %63 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %57
  br label %156

65:                                               ; preds = %50
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %156

71:                                               ; preds = %65
  %72 = load %struct.section*, %struct.section** %5, align 8
  %73 = call i32 @get_ent_count(%struct.section* %72, i32* %9)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %156

76:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call %struct.TYPE_9__* @gelf_getdyn(%struct.TYPE_10__* %82, i32 %83, %struct.TYPE_9__* %3)
  %85 = icmp ne %struct.TYPE_9__* %84, %3
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = call i32 @elf_errmsg(i32 -1)
  %88 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %99

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DT_SYMTAB, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %6, align 8
  br label %102

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %86
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %77

102:                                              ; preds = %94, %77
  br label %103

103:                                              ; preds = %102, %1
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %153, %103
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.readelf*, %struct.readelf** %2, align 8
  %108 = getelementptr inbounds %struct.readelf, %struct.readelf* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %106, %109
  br i1 %110, label %111, label %156

111:                                              ; preds = %104
  %112 = load %struct.readelf*, %struct.readelf** %2, align 8
  %113 = getelementptr inbounds %struct.readelf, %struct.readelf* %112, i32 0, i32 2
  %114 = load %struct.section*, %struct.section** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.section, %struct.section* %114, i64 %116
  store %struct.section* %117, %struct.section** %5, align 8
  %118 = load %struct.section*, %struct.section** %5, align 8
  %119 = getelementptr inbounds %struct.section, %struct.section* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SHT_SYMTAB, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %111
  %124 = load %struct.section*, %struct.section** %5, align 8
  %125 = getelementptr inbounds %struct.section, %struct.section* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SHT_DYNSYM, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %123, %111
  %130 = load %struct.readelf*, %struct.readelf** %2, align 8
  %131 = getelementptr inbounds %struct.readelf, %struct.readelf* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @RE_DD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %129
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.section*, %struct.section** %5, align 8
  %139 = getelementptr inbounds %struct.section, %struct.section* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.readelf*, %struct.readelf** %2, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @dump_symtab(%struct.readelf* %143, i32 %144)
  br label %156

146:                                              ; preds = %136
  br label %151

147:                                              ; preds = %129
  %148 = load %struct.readelf*, %struct.readelf** %2, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @dump_symtab(%struct.readelf* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %146
  br label %152

152:                                              ; preds = %151, %123
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %104

156:                                              ; preds = %49, %64, %70, %75, %142, %104
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_10__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local %struct.TYPE_9__* @gelf_getdyn(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dump_symtab(%struct.readelf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
