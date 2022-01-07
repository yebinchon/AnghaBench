; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_sym.c_symtab_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_sym.c_symtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"/dev/ksyms\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"ksyms\00", align 1
@EV_CURRENT = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i32 0, align 4
@SHT_SYMTAB = common dso_local global i64 0, align 8
@nsyms = common dso_local global i32 0, align 4
@STT_FUNC = common dso_local global i32 0, align 4
@maxsymname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@symbol_table = common dso_local global %struct.TYPE_9__* null, align 8
@symcmp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"(usermode)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symtab_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32* null, i32** %3, align 8
  store i32 -1, i32* %11, align 4
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %32

16:                                               ; preds = %0
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = call i32 @modfind(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call i32 @kldload(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %20, %16
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -1, i32* %1, align 4
  br label %203

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i32, i32* @EV_CURRENT, align 4
  %34 = call i32 @elf_version(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ELF_C_READ, align 4
  %37 = call i32* @elf_begin(i32 %35, i32 %36, i32* null)
  store i32* %37, i32** %2, align 8
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %68, %32
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @elf_nextscn(i32* %39, i32* %40)
  store i32* %41, i32** %3, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call %struct.TYPE_8__* @elf_getshdr(i32* %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %12, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SHT_SYMTAB, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load i32*, i32** %3, align 8
  %53 = call %struct.TYPE_10__* @elf_getdata(i32* %52, i32* null)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %4, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  store i32 %63, i32* @nsyms, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %51, %43
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %38

71:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32*, i32** %2, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32* @elf_nextscn(i32* %73, i32* %74)
  store i32* %75, i32** %3, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32*, i32** %3, align 8
  %83 = call %struct.TYPE_10__* @elf_getdata(i32* %82, i32* null)
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %7, align 8
  br label %87

87:                                               ; preds = %81, %77
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %72

91:                                               ; preds = %72
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = load i32, i32* @nsyms, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* @nsyms, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %96, %struct.TYPE_7__** %5, align 8
  br label %97

97:                                               ; preds = %130, %91
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = icmp ult %struct.TYPE_7__* %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %97
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @ELF32_ST_TYPE(i32 %104)
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @STT_FUNC, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %101
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @add_symbol(i8* %120, i64 %123, i32 %127)
  br label %129

129:                                              ; preds = %114, %109, %101
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 1
  store %struct.TYPE_7__* %132, %struct.TYPE_7__** %5, align 8
  br label %97

133:                                              ; preds = %97
  %134 = call i32 (...) @fake_up_certain_popular_kernel_symbols()
  %135 = load i8*, i8** @maxsymname, align 8
  %136 = load i64, i64* @ULONG_MAX, align 8
  %137 = call i32 @sprintf(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %136)
  %138 = load i8*, i8** @maxsymname, align 8
  %139 = load i64, i64* @ULONG_MAX, align 8
  %140 = call i32 @add_symbol(i8* %138, i64 %139, i32 1)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %142 = load i32, i32* @nsyms, align 4
  %143 = load i32, i32* @symcmp, align 4
  %144 = call i32 @qsort(%struct.TYPE_9__* %141, i32 %142, i32 4, i32 %143)
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %172, %133
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @nsyms, align 4
  %148 = sub nsw i32 %147, 1
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %145
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %156, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %150
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %150
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %145

175:                                              ; preds = %145
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %177 = load i32, i32* @nsyms, align 4
  %178 = load i32, i32* @symcmp, align 4
  %179 = call i32 @qsort(%struct.TYPE_9__* %176, i32 %177, i32 4, i32 %178)
  br label %180

180:                                              ; preds = %186, %175
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i64 1
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 1
  store %struct.TYPE_9__* %188, %struct.TYPE_9__** @symbol_table, align 8
  %189 = load i32, i32* @nsyms, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* @nsyms, align 4
  br label %180

191:                                              ; preds = %180
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** @symbol_table, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  store i32 1, i32* %200, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @close(i32 %201)
  store i32 0, i32* %1, align 4
  br label %203

203:                                              ; preds = %191, %30
  %204 = load i32, i32* %1, align 4
  ret i32 %204
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @modfind(i8*) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @elf_version(i32) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @elf_getshdr(i32*) #1

declare dso_local %struct.TYPE_10__* @elf_getdata(i32*, i32*) #1

declare dso_local i64 @ELF32_ST_TYPE(i32) #1

declare dso_local i32 @add_symbol(i8*, i64, i32) #1

declare dso_local i32 @fake_up_certain_popular_kernel_symbols(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @qsort(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
