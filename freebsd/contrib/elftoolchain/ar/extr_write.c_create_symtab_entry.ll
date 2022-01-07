; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_create_symtab_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/ar/extr_write.c_create_symtab_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_getshdr failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"elf_strptr failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"can't find .strtab section\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"gelf_getsym failed: %s\00", align 1
@STB_GLOBAL = common dso_local global i64 0, align 8
@STB_WEAK = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdar*, i32*)* @create_symtab_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_symtab_entry(%struct.bsdar* %0, i32* %1) #0 {
  %3 = alloca %struct.bsdar*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bsdar* %0, %struct.bsdar** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @elf_kind(i32* %16)
  %18 = load i64, i64* @ELF_K_ELF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %179

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @elf_getshstrndx(i32* %22, i64* %11)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %27 = call i32 @elf_errmsg(i32 -1)
  %28 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %26, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %179

29:                                               ; preds = %21
  store i32 -1, i32* %13, align 4
  store i32* null, i32** %5, align 8
  br label %30

30:                                               ; preds = %62, %51, %39, %29
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @elf_nextscn(i32* %31, i32* %32)
  store i32* %33, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call %struct.TYPE_12__* @gelf_getshdr(i32* %36, %struct.TYPE_12__* %6)
  %38 = icmp ne %struct.TYPE_12__* %37, %6
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %41 = call i32 @elf_errmsg(i32 -1)
  %42 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %40, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %30

43:                                               ; preds = %35
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* %11, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @elf_strptr(i32* %44, i32 %46, i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %53 = call i32 @elf_errmsg(i32 -1)
  %54 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %52, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %30

55:                                               ; preds = %43
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @elf_ndxscn(i32* %60)
  store i32 %61, i32* %13, align 4
  br label %63

62:                                               ; preds = %55
  br label %30

63:                                               ; preds = %59, %30
  %64 = call i32 (...) @elf_errno()
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @elf_errmsg(i32 %69)
  %71 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %68, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %77 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %76, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %179

78:                                               ; preds = %72
  store i32* null, i32** %5, align 8
  br label %79

79:                                               ; preds = %169, %97, %88, %78
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32* @elf_nextscn(i32* %80, i32* %81)
  store i32* %82, i32** %5, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %170

84:                                               ; preds = %79
  %85 = load i32*, i32** %5, align 8
  %86 = call %struct.TYPE_12__* @gelf_getshdr(i32* %85, %struct.TYPE_12__* %6)
  %87 = icmp ne %struct.TYPE_12__* %86, %6
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %90 = call i32 @elf_errmsg(i32 -1)
  %91 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %89, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %79

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SHT_SYMTAB, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %79

98:                                               ; preds = %92
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %168, %98
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = call %struct.TYPE_13__* @elf_getdata(i32* %105, %struct.TYPE_13__* %106)
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %8, align 8
  %108 = icmp ne %struct.TYPE_13__* %107, null
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i1 [ false, %99 ], [ %108, %104 ]
  br i1 %110, label %111, label %169

111:                                              ; preds = %109
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sdiv i32 %114, %116
  store i32 %117, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %165, %111
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %168

122:                                              ; preds = %118
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_13__* %123, i32 %124, %struct.TYPE_11__* %7)
  %126 = icmp ne %struct.TYPE_11__* %125, %7
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %129 = call i32 @elf_errmsg(i32 -1)
  %130 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %128, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  br label %165

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @GELF_ST_BIND(i32 %133)
  %135 = load i64, i64* @STB_GLOBAL, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @GELF_ST_BIND(i32 %139)
  %141 = load i64, i64* @STB_WEAK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %165

144:                                              ; preds = %137, %131
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SHN_UNDEF, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %165

150:                                              ; preds = %144
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* %13, align 4
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @elf_strptr(i32* %151, i32 %152, i32 %154)
  store i8* %155, i8** %9, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %159 = call i32 @elf_errmsg(i32 -1)
  %160 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %158, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  br label %165

161:                                              ; preds = %150
  %162 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @add_to_ar_sym_table(%struct.bsdar* %162, i8* %163)
  br label %165

165:                                              ; preds = %161, %157, %149, %143, %127
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %118

168:                                              ; preds = %118
  br label %99

169:                                              ; preds = %109
  br label %79

170:                                              ; preds = %79
  %171 = call i32 (...) @elf_errno()
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load %struct.bsdar*, %struct.bsdar** %3, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @elf_errmsg(i32 %176)
  %178 = call i32 (%struct.bsdar*, i32, i8*, ...) @bsdar_warnc(%struct.bsdar* %175, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %20, %25, %75, %174, %170
  ret void
}

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i64 @elf_getshstrndx(i32*, i64*) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i32, i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @gelf_getshdr(i32*, %struct.TYPE_12__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @elf_ndxscn(i32*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_13__* @elf_getdata(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_11__* @gelf_getsym(%struct.TYPE_13__*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @GELF_ST_BIND(i32) #1

declare dso_local i32 @add_to_ar_sym_table(%struct.bsdar*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
